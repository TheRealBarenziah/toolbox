#!/bin/bash

DESC="$(date '+%Y-%m-%d_%H-%M-%S')"
if [ $# -ne 2 ]; then
echo you should type :
echo "$0 <projetsrc/envsrc> <projectdest/envdest>"
exit 1
fi

export project="`echo $1 | cut -d / -f 1`"
export env="`echo $1 | cut -d / -f 2`"
ls -l $project/$env/$project-$env.conf
. $project/$env/$project-$env.conf

export fromdbserver=$dbserver
export fromdbname=$dbname
export fromdbuser=$dbuser
export fromdbpass=$dbpass
export fromtableprefix=$tableprefix
export fromurl=$url
export fromsimpleurl=$simpleurl

export project="`echo $2 | cut -d / -f 1`"
export env="`echo $2 | cut -d / -f 2`"
ls -l  $project/$env/$project-$env.conf
. $project/$env/$project-$env.conf

export todbserver=$dbserver
export todbname=$dbname
export todbuser=$dbuser
export todbpass=$dbpass
export totableprefix=$tableprefix
export tourl=$url
export tosimpleurl=$simpleurl

echo we are moving from $1 to $2, $2 gonna be erase, are you sure ?
read yes
if [ "$yes" != "y" ]; then
	exit 1
fi

# first, we backup the old database :

[ -d ./$project/archivesDB ] || mkdir $project/archivesDB
[ -d ./tmp ] || mkdir tmp

echo mysqldump -h $todbserver -u $todbuser --password=$todbpass $todbname
mysqldump -h $todbserver -u $todbuser --password=$todbpass $todbname | gzip > ./$project/archivesDB/$todbname-$todbserver-$DESC.sql.gz

echo mysqldump -h $fromdbserver -u $fromdbuser --password=$fromdbpass $fromdbname
mysqldump -h $fromdbserver -u $fromdbuser --password=$fromdbpass $fromdbname > tmp/$fromdbname.sql

cp tmp/$fromdbname.sql tmp/$todbname.sql

#echo sed 's#'$fromsimpleurl'#'$tosimpleurl'#g' tmp/$fromdbname.sql \> tmp/$todbname.sql
#sed 's#'$fromsimpleurl'#'$tosimpleurl'#g' tmp/$fromdbname.sql > tmp/$todbname.sql


if [ "$fromtableprefix" != "" ] || [ "$totableprefix" != "" ] ; then
	sed -i 's/ `'$fromtableprefix'/ `'$totableprefix'/g' tmp/$todbname.sql
	echo
fi


#echo mysqlimport -h $todbserver -u $todbuser --password=$todbpass $todbname tmp/$todbname.sql
mysql -h $todbserver -u $todbuser --password=$todbpass $todbname < tmp/$todbname.sql



cat << EOF | mysql -h $todbserver -u $todbuser --password=$todbpass $todbname
UPDATE ${totableprefix}options SET option_value = replace(option_value, '$fromurl', '$tourl') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE ${totableprefix}posts SET guid = REPLACE (guid, '$fromurl', '$tourl');
UPDATE ${totableprefix}posts SET post_content = REPLACE (post_content, '$fromurl', '$tourl');
UPDATE ${totableprefix}postmeta SET meta_value = REPLACE (meta_value, '$fromurl','$tourl');
UPDATE ${totableprefix}options SET option_name = REPLACE ( option_name, '${fromtableprefix}','${totableprefix}');
UPDATE ${totableprefix}usermeta SET meta_key = REPLACE ( meta_key, '${fromtableprefix}','${totableprefix}');
EOF
