#!/usr/bin/bash

# Script that organizes files in the current directory into subfolders

echo "File Organization into Subfolders in the Current Directory"

for file in *
do
	# Check if current file is a directory
	if [ ! -f "$file" ]
       	then
		echo "Skipping '$file' (it's a directory)"
		continue
	fi
	
	# Check if current file is the script itself 
	if [ "$file" == "sort_to_files.sh" ] 
	then
		echo "Skipping '$file' (it's this script)"
		continue
	fi
	
	# Cut file name from its extension
	EXTENSION="${file##*.}"
	
	# Check if file is an extension 
	if [ "$file" == "$EXTENSION" ] 
	then
		DIR_NAME="other"
	else
		DIR_NAME="${EXTENSION^^}"
	fi
	
	# Create directory if it exists ignore
	mkdir -p "$DIR_NAME"
	
	# Move file to directory created 
	mv "$file" "$DIR_NAME/"
	echo "Moved $file to $DIR_NAME/"
done

echo "The script is done running."

