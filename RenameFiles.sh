#!/bin/bash

#Renames files in the chosen directory based on the file extension. If user chooses not to rename, files automatically get named based on today's date. 

read -p "Which directory do you want to go to?" dire
cd $dire

DATE=$(date +%F)

read -p "Please enter file extension" kay

for FILE in *.$kay
do
#if [ $kay == "jpg" ]
#then
 read -p "Please enter a file prefix: (Press enter for ${DATE})" pref
 if [ -z $pref ]
 then
  mv $FILE $DATE-$pref-$FILE
     NEWFILE=$DATE-$pref-$FILE
 else
  mv $FILE $pref-$FILE
  NEWFILE=$pref-$FILE
 fi
#fi
echo "$NEWFILE"
done
