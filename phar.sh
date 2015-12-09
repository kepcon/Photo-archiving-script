#!/bin/sh
#Systems & Services phar coursework script


echo "PHAR coursework script running..."

#Checks User inputted 2 arguments
if test "$#" -ne 2; then
	echo "Please enter 2 parameters, to use: phar images_path archive_path"
	exit 
fi

#Verifies image source directory exists		
if test ! -d $1 ; then
	echo "Error: Image source cannot be found. Exiting Script."
	exit 
fi	

#Creates photoarch dir if one doesn't already exist
mkdir -p $2

#Finds all images with correct name and file format
images=$(find $1 | grep "IMG_[0-9][0-9][0-9][0-9].JPG")

for filepath in $images
do
	while :
	do
		fname=$(basename $filepath)
		#Checks for images with the same filename
		while [ -e $2/$fname ]
		do
			#Duplicate image content. 1 copied, path of duplicate stored
			if test -z "$(diff $filepath $2/$fname)" ; then
				echo "$filepath Already archived, added to duplicates.txt"
				echo $(readlink -e $filepath) >> $2/duplicates.txt
				break 
			fi
			#Adds '.JPG' to files with the same name but different content 
			fname=$fname".JPG"
			echo "Renamed $filepath to $fname"
		done
		cp $filepath $2/$fname
		break
	done			
done

echo "SCRIPT COMPLETE"







	

