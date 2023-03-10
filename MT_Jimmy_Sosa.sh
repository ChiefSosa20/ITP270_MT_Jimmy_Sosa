#!/bin/bash 
 
read -p "Enter 'google.com' to ping, anythig else is invalid: " domain

#The input validation
if [ "$domain" != "google.com" ]; then
  echo "You must enter google.com, anything else is WRONG FOOL"
  exit 1
fi

#
ping -c 5 "$domain" > ping_results.txt

#Print a message indicating that the ping is complete
echo "Success! Results added to ping_results.txt."
