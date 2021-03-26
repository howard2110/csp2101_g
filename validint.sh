#!/bin/bash



while true; do #loop start

      read -p 'please enter 20 or 40: ' usrin #ask for user input
         if [[ $usrin -eq 20 ]] || [[ $usrin -eq 40 ]]; then #check user input for only 20 or 40 
            echo 'valid input thank you '  #if it is 20 or 40 echo message
            break    #break the loop
        else
            echo 'invalid input please try again' #echo messge to prompt user try again
        fi

done

exit 0

