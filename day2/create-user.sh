#!/bin/bash
#

read -p "enter the username " username

echo "you entered $username"

sudo useradd $username

echo "new user added"

