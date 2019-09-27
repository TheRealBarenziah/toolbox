#!/bin/bash
if [ -e ./.env ]; then
  echo ".env file detected, proceeding with the script..."
else
  echo "You seem to not have any .env file, should we create it ? (y/n)"
  read -p "y/n : " answer
  if [ $answer = "y" ]; then
    read -p "What is your DB (sql) username ?" username
    read -p "What is your DB (sql) password ?" password
    read -p "What is your DB (sql) name ?" dbname
    touch .env
    echo "
      DB_USERNAME='$username'
      DB_PASSWORD='$password'
      DB_NAME='$dbname'
      DB_HOSTNAME='localhost'
      JWT_SECRET='DanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWonDanyWon'
      " >> .env
    echo "./backend/.env created. You may want to custom the JWT_SECRET & DB_HOSTNAME values. 
    Proceeding with the script..."
  else echo 'Proceeding with the script...'
  fi
fi

sequelize db:drop
sequelize db:create
sequelize db:migrate

node ./seeds/01_user_admin.js
node ./seeds/02_grades.js
node ./seeds/03_users_wavager.js
node ./seeds/04_configuration.js
node ./seeds/05_categories.js
node ./seeds/06_services.js
node ./seeds/07_place.js

echo ' '
echo ' '
echo 'Database is now ready to use, everything went fine !'
echo '-----------------------------------------'
echo 'To log as admin: '
echo ' '
echo 'Email : dragonchan38@dragonstone.io'
echo 'Password : test1234'
echo '-----------------------------------------'