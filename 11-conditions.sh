#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0 ]
then
echo "ERROR:you must have sudo access to execute script"
exit 1
fi
dnf list installed mysql
if [ $? -ne 0 ]
then #not installed
  dnf install mysql -y
  if [ $? -ne 0 ]
  then 
  echo "installing mysql ...failure"
  exit 1
  
else
echo "installing mysql ...success"
fi
else 
echo "mysql already installed"
fi  

if [ USERID -ne 0 ]
then 
echo "ERROR:YOU MUST HAVE SUDO ACCESS TO EXECUTE SCRIPT"
exit 1
fi
dnf list installed git
if [ $? -ne 0 ]
then #not installed
  dnf install git -y
  if [ $? -ne 0 ]
  then 
  echo "install git ...failure"
  exit 1
else
   echo "git install ---success"
 fi
else 
echo "git already installed"
fi      