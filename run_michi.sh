#!/bin/bash

# Check if the original NavApp exist or not.
# If yes, remove it. If not, skip it.

if [ -d ./NavApp ]; then
    echo "Remove the existing NavApp folder..."
    rm -rf NavApp
fi

if [ ${1} ]; then
   echo Thank you! You are so good.
else
   echo -e "\033[31mYo~Please tell me which build you need! For example,\033[0m"
   echo ./run_michi.sh ./Builds/Odin/2017-07-07-\[677\]-CL-2799321.zip
   echo
   exit
fi

# Copy the build which user needs to current folder
cp ${1} build.zip

# Unzip the build zip file 
echo The build is extracting...Please wait!
unzip -q build.zip

# Remove the build zip after the build is extracted.
rm build.zip
echo The build is extracted already

# Copy the NavKit folder to unzip build folder "NavApp"
cp -r ./NavKitFiles-michi-17.3/home ./NavApp

# Clear the screen and show the density selection list
clear
. density.sh

# Clear the screen and show the map selection list
clear
. maps.sh

# Grant the permission of files in NavApp
chmod 755 /home/luhu/TomTom/NavApp/*

# Create the link between NavApp and real map folder
#cd NavApp/home
#ln -s ../../Maps/NDS/Europe_2.4.3_8788/ Euro

# Launch NavApp
cd ~/TomTom
cd NavApp && ./NavApp

