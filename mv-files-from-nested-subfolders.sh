#!/bin/sh
# this script is meant to work on cases with this directory structure
# ./
# |--file1.ext1
# |--file2.ext1
# |--dir1
# |  |--subdir1
# |     |--subfile1.ext2
# |  |--subdir2
# |     |--subfile2.ext2
# it will take ./dir1 and .ext2 as arguments, and rename the subfiles in the subdirs to the files in the root where the script is called from.
# the output directory structure will look like this
# ./
# |file1.ext1
# |file1.ext2
# |file2.ext1
# |file2.ext2
basedir="$1"
ext="$2"
pwd=$( pwd )
#TODO: check if this temp file exists before removing a potentially nonexistant file. also check before creating it. maybe title it off a random hash? also please make it a variable im getting tire of typing it out every time
tempfile="$pwd/filefortempliststoragewithlongnameastonotoverwriteanything.txt"
if [ -f $tempfile ]; then
    rm "$pwd/filefortempliststoragewithlongnameastonotoverwriteanything.txt"
fi

for file in "$pwd"/*; do
    if [ -f "$file" ]; then
	bf=$( basename "$file" )
        newfilename="${bf%%.*}.$ext"
	echo -e "$newfilename" >> "$pwd/filefortempliststoragewithlongnameastonotoverwriteanything.txt"
    fi
done

index=1
for dir in "$basedir"/*; do
    for file in "$dir"/*; do
        if [ -f "$file" ]; then
	    newsubfilename=$( sed -n "$index{p;q}" "$pwd/filefortempliststoragewithlongnameastonotoverwriteanything.txt" )
	    index=$( expr $index + 1 )
	    echo -e "Moving file $file to $newsubfilename"
	    mv "$file" "./$newsubfilename"
        fi
    done
done
rm "$pwd/filefortempliststoragewithlongnameastonotoverwriteanything.txt"
rm -rf "$basedir"
