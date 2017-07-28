#!/bin/bash

configfolder=/home/luhu/TomTom/devsettings
navkit=/home/luhu/TomTom/NavApp

config=(
\(1\)_ldpi_400*240_5_inchs_V2PR
\(2\)_175dpi_1280*768_7_inchs_VP2R
\(3\)_hdpi_1280*768_7_inchs_VP2R
\(4\)_hdpi_1280*720_8_inchs_Borgward
\(5\)_mdpi_800*480_default_Reference
\(6\)_mdpi_790*440_12.3_inchs_Borgward
\(7\)_mdpi_1440*540_12.3_inchs_Borgward
)

echo -e "\033[41;37mPlease select the resolution and density which you need:\033[0m"

for name in ${config[@]}; do
    echo $name
done

while true; do

    read -p Choice? uu
    case $uu in
        [1]* ) cp $configfolder/devsettings.xml.5.xml $navkit/devsettings.xml;break;;
        [2]* ) cp $configfolder/devsettings.xml.175.xml $dvkit/evsettings.xml;break;;
        [3]* ) cp $configfolder/devsettings.xml.7.xml $navkit/devsettings.xml;break;;
        [4]* ) cp $configfolder/devsettings.xml.8.xml $navkit/devsettings.xml;break;;
        [5]* ) cp $configfolder/devsettings.xml.6.xml $navkit/devsettings.xml;break;;
        [6]* ) cp $configfolder/devsettings.xml.m.12.3-790.xml $navkit/devsettings.xml;break;;
        [7]* ) cp $configfolder/devsettings.xml.m.12.3-1440.xml $navkit/devsettings.xml;break;;
        * ) echo what is your choice?
    esac
done

