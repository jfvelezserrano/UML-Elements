#!/bin/bash
version=`cat Extension/description.xml | grep 'version value="[0-9][\.0-9]*' | grep -o [0-9][\.0-9]*`
new_file="UML_Elements-"$version".oxt"
rm -f $new_file
cd Extension
zip -r $new_file ./*
mv $new_file ../
cd ..
