# Photo-archiving-script
Photo archiving bash script created for Systems &amp; Services module.

Copies all files matching regex IMG_XXXX.JPG (X = any number) from the source directory into a new flat photo archive directory(photoarch).

Files that are not identical but have the same name will have '.JPG' appended on to the name to make them uniquely identifiable. The paths of duplicate files are written to duplicates.txt.

# Usage: phar source_path archive_path
