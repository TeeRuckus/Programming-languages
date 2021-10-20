#!/bin/bash

#saving the current directory so we can switch back it after we have found
#the files which we need to find
currDirectory="$(pwd)"
saveLocation="$currDirectory"/out_bashOne.file""
saveLocationTwo="$currDirectory"/out_bashTwo.file""
cd ~/
find . -print | grep .conf  > "$saveLocation"
find . -type f -name "*.conf*" > "$saveLocationTwo"
cd $currDirectory

echo "First search for anything with .conf"
cat "$saveLocation"
echo "Second search for file names specifically with .conf in it"
cat "$saveLocationTwo"
