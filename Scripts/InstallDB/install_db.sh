#!/bin/sh

user="userName"
password="userPass"
GAME_SERVER="l2jmobiush5"
LOGIN_SERVER="l2jmobiush5"

mysql -u $user -p"$password" -e "CREATE DATABASE IF NOT EXISTS $GAME_SERVER"
for gm_sql in sql/game/*.sql; do
  mysql -u $user -p"$password" $GAME_SERVER <"$gm_sql"
done

# mysql -u $user -p"$password" -e "CREATE DATABASE IF NOT EXISTS $LOGIN_SERVER"
for ls_sql in sql/login/*.sql; do
  mysql -u $user -p"$password" $LOGIN_SERVER <"$ls_sql"
done
