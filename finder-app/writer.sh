#! /bin/bash
#First argument is full path to file (including filename), aka "writefile"
#second arg is text to be found within the file, aka "writestr"
#exits with return value 1 if any parameters not specified
#creates file in directory if it did not already exist

#Initialize variables
writefile=$1
writestr=$2

#Check number of arguments entered
if [ $# -lt 2 ];
then
        echo "$0: Missing arguments, please enter two arguments; file location and text to be searched. You entered $# argument(s)."
        exit 1
else
   true
fi

DIR=$filesdir
if [ -d "$DIR" ]; then
   #create file with text using echo > touch
echo $writestr > $writefile
else
   #create directory & file with text using mkdir, echo, & touch 
   mkdir -p "$(dirname "$writefile")" && echo $writestr > $writefile
fi

