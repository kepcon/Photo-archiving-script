# Photo-archiving-script
Photo archiving bash script created for Systems &amp; Services module.

Copies all files matching regex IMG_XXXX.JPG (X can mean any number) from the source directory into a new photo archive directory

Files that are not identical but have the same name with have '.JPG' appended on to the name so it is unique. Duplicate files are written to duplicates.txt with their file path.

Usage: phar source_path archive_path
