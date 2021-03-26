#!/bin/bash


while true;do #loop start


    read -p "1)word search 2)exit: "  num  #ask for user input and store in num


     if [[ $num -eq 1 ]];then #check if num equal to 1 


       read -p "Enter pattern to be searched for: " word #if num equal 1 ask user for pattern input


        while true;do #while loop start 
        read -p "1)whole word match 2)any match: " match #ask user to chose 1 or 2

        if [[ $match -eq 1 ]]; then #if user input equal to 1 

                while true;do #while loop start
                read -p  "inverted Y/N: " invert #ask user for input
                 if [[ $invert =~ [Yy] ]];then #if user input is Y or y then
                        if [[ $(grep -iwv $word access_log.txt | wc -l) -ge 1 ]];then #count result of search access_log with case-insensitive whole word inverte and check if it is greater than 1

                                echo $(grep -iwv $word access_log.txt | wc -l) "matchs found" #if greater than 1, echo how many matchs found

                                grep -inwv $word access_log.txt #echo the result of line number and line that matchs 
                                
                                
   
                        else 
                                echo "no match found"#if it is not great that 1 then echo no match found
                               
                                
                            

                        fi
                        break #break loop when done 


                 elif [[ $invert =~ [Nn] ]];then #if user input is N or n then

                        if [[ $(grep -iw $word access_log.txt | wc -l) -ge 1 ]];then #count result of search access_log with case-insensitive whole word and check if it is greater than 1

                                echo $(grep -iw $word access_log.txt | wc -l) "matchs found" #if greater than 1, echo how many matchs found

                                grep -inw $word access_log.txt #echo the result of line number and line that matchs
                               
     
                        else 
                                echo "no match found" #if it is not great that 1 then echo no match found
                               
                                
                        fi
                        break #break loop when done
                        
                 else
                
                         echo "Please enter valid Letter" #ask user to inputer valid letter


                 fi
                done
                break #break loop when done


        elif [[ $match -eq 2 ]]; then

                 while true;do
                 read -p  "inverted Y/N: " invert #ask user for input
                 if [[ $invert =~ [Yy] ]];then #if user input is Y or y then

                        if [[ $(grep -iv $word access_log.txt | wc -l) -ge 1 ]];then #count result of search access_log with case-insensitive any match invert and check if greater than 1

                                 echo $(grep -iv $word access_log.txt | wc -l) "matchs found" #if greater than 1, echo how many matchs found

                                 grep -inv $word access_log.txt #echo the result of line number and line that matchs
                                
                               
   
                         else 
                                 echo "no match found" #if it is not great that 1 then echo no match found
                                
                                 

                        fi
                        break


                 elif [[ $invert =~ [Nn] ]];then #if user input is N or n then

                        if [[ $(grep -i $word access_log.txt | wc -l) -ge 1 ]];then #count result of search access_log with case-insensitive any match and check if greater than 1

                                 echo $(grep -i $word access_log.txt | wc -l) "matchs found" #if greater than 1, echo how many matchs found

                                 grep -in $word access_log.txt #echo the result of line number and line that matchs
                                 
                                 
   
                        else 
                                 echo "no match found" #if it is not great that 1 then echo no match found
                                 
                                 

                        fi
                        break
                 
                 else
                
                         echo "Please enter valid Letter" #ask user to inputer valid letter

                 fi
                 done
                 break


        else
                 echo "Please enter valid number" #ask user to inputer valid number

        fi
        done






    
     elif [[ $num -eq 2 ]];then #if num equal to 2 exit the script
        break  #break the loop

     else 
        echo "Please enter valid number" #ask user to inputer valid number
     fi



done #break the loop


exit 0 
