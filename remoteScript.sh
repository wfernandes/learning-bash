#!/bin/bash

echo "Hello, Warren"

echo "---------------------"
echo "Connected to :"
hostname
echo "---------------------"

database="pi"

mysql -u pi $database -e 'select name from name'

