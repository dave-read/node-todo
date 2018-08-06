#!/usr/bin/env bash

if [[ $DB_URL == "" ]];then
  echo "DB_URL environment not defined"
  exit 1
fi

kubectl create secret generic mongo-todo-db-url \
--from-literal=DB_URL=$DB_URL