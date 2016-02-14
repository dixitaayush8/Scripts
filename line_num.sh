#!/bin/bash

#User chooses a file to access in a specific directory and chooses how many lines to access from that file.

read -p "Choose a directory: " dire

cd $dire

ls -a

read -p "Choose a file" FILEN

read -p "How many lines of ${FILEN} do you want to see?" JJ

PP=1
while read LINE
do
 if [ ${PP} -gt ${JJ} ]
 then
  break
 fi
 echo "${PP}: ${LINE}"
 (( PP++ ))
done < $FILEN
