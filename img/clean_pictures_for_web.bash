#!/bin/bash
# Resizing every pictures frow which hight or witdh is > 1024px
# you need to install imagemagick before :
# -> sudo apt-get install imagemagick on Debian
# -> brew install imagemagick on OSX

# Exclude hidden dirs
shopt -s dotglob
find * -maxdepth 5 -type d | while read dir; do 
    for extention in {".jpg", ".JPG", ".png", ".PNG"}; do
        mogrify -verbose -resize '1024x1024>' "$dir/*$extension"
    done
done   
