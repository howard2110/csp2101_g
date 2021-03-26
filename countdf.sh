#!/bin/bash


cnt1=0
cnt2=0
cnt3=0
cnt4=0


for file in $1/*   #for loop 

do


  if [[ -f $file ]] #check if $file from user given path it is a file
  then

      if [[ -s $file ]] #if it is a file and file is not empty
     then
       ((cnt1++)) #cnt1 + 1
     else
       ((cnt2++)) #cnt2 + 1 
      fi

   elif [[ -d $file ]] #check if $file from user given path it is a dir
   then

      if [[ ! -z $file ]]#if it is dir and dir is not zero string
      then
         ((cnt3++)) #cnt3 + 1
      else
         ((cnt4++)) #cnt4 + 1
       fi

    fi
          
done

echo "The $1 directory contains:"   #echo dir from user input
echo "$cnt1 files that contain data" #echo numbers of no empty file 
echo "$cnt2 files that are empty"    #echo numbers of empty file 
echo "$cnt3 non-empty directories"   #echo numbers of no empty dir 
echo "$cnt4 empty directories"       #echo numbers of empty dir



exit 0