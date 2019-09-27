#!/bin/bash
echo "This script works on top of jq: it takes a folder and make a prettified copy of all the jsons into it."
echo "Please write path to source folder : "
read -p "Absolute path : " absolutepath;
if [ -e $absolutepath ]; then
  if [ -d $absolutepath ]; then
    destinationdirname="prettifiedJsons"
    cd $absolutepath
    mkdir $destinationdirname
    for file in ./*.json; do
        filename=${file:2}
        cat $file | jq '.' | cat > $destinationdirname/$filename;
    done;
  else echo "Absolute path must be a folder. Files won't do. Exiting...";
  fi;
fi;