#!/bin/bash
# You need to have a .env file in the same directory.
# This script will set the key-value pairs found in .env as environment variables
# Then call pgloader with those variables.
# Edit accordingly with the keys defined in your .env (F.e I have three database setups total, _DEV, _STAGING and _PROD)

set -o allexport
source .env
echo "LOAD DATABASE
 FROM pgsql://$DB_USERNAME_DEV:$DB_PWD_DEV@$DB_HOST_DEV:$DB_PORT_DEV/$DB_DEV 
 INTO pgsql://$DB_USERNAME_STAGING:$DB_PWD_STAGING@$DB_HOST_STAGING:$DB_PORT_STAGING/$DB_STAGING;" | cat >>loader.load
pgloader loader.load
rm loader.load
set +o allexport
