#!/bin/bash
numberOfFiles=0
if [[ $# -ne 1 ]]
then
    echo "Specify a directory"
else 

#CONVERT AND RENAME
    echo "This script will overwrite all file names to ordered filenames"
    #CONVERT
    #if there are pngs, use imagemagick to convert it to .jpg
    
    for png in $1/*.png
    do
        mogrify -path $1 -format jpg -flatten -quality 100 png
    done
   
    #RENAME
    name=0
    for f in $1/*.jpg
    do
        mv $f $1/$name.jpg
        let "name+=1"
    done

    echo "Completed"



     #SET WALLPAPER
    for f in $1/*.jpg
    do
        let "numberOfFiles+=1"
    done
    let "wallpaper=$RANDOM % numberOfFiles"
#    feh --bg-fill $1/1.jpg
    feh --bg-fill $1/$wallpaper.jpg
fi
