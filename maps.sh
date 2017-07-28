#!/bin/bash

maplist=/home/luhu/TomTom/Maps/NDS
navkit=/home/luhu/TomTom/NavApp/home

maps=(
\(1\)_Europe
\(2\)_Taiwan
\(3\)_USA_Canada_Mexico
\(4\)_Australia_New_Zealand
\(5\)_Middle_East_Africa
\(6\)_France_Monaco
\(7\)_Berlin
)

for item in ${maps[@]}; do
    echo $item
done

cd $navkit

while true; do
    read -p Selection? input
    case $input in
        [1]* )
           ln -s $maplist/Europe_2.4.3_8788/ Euro
           ;;
        [2]* ) 
           ln -s $maplist/NDS_2016.12_2.4.3_TWN/ TWN
           ;;
        [3]* ) 
           ln -s $maplist/USA_Canada_and_Mexico_2.4.3_10953/ USA_Canada_Mexico
           ;;
        [4]* )
           ln -s $maplist/NDS_2016.06_2.4.3_ANZ/ ANZ
           ;;
        [5]* )
           ln -s $maplist/NDS_2016.12_2.4.3_MEA/ MEA
           ;;
        [6]* )
           ln -s $maplist/NDS_2017.03_2.4.3_FRA_97UR/ France_Monaco
           ;;
        [q]* ) 
           break
           ;;
    esac
done
