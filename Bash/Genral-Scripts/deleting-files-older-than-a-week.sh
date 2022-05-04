#!/bin/bash

##### Script Owner - Aakriti Kashyap
##### Script Purpose - Automatically delete files older than a week
##### Script Deployed - April 04, 2019
##### ** Script performs delete operation on zip files ***
##### changes log file

# Script to delete files older than a week.

echo " "

# cd to the path of the folder
cd /path/of/folder/

# setting current date in varaiable named $Current_date
echo "Today's Date is: "
Current_date= date | awk '{ print $2, $3}'

echo " "

echo "Deleting files before the date: "
Date_a_week_before=$(date --date="-7 day" | awk '{ print $2, $3}')
echo "$Date_a_week_before"

DATE=$(date +"%F")

echo "Files deleted on:" `date` > "deletion-$DATE.log"

#Printing files to be deleted and saving them in a log file with name deletion-(date-the-file-is deleted).log
find /path/to/find/the/required/files -maxdepth 1 -mtime +7 -type f -name "*.zip" -print >> "deletion-$DATE.log"

#Deleting the files older than a week
find /path/to/find/the/required/files -maxdepth 1 -mtime +7 -type f -name "*.zip" -delete

echo " "
