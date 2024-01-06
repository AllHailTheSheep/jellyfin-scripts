#!/bin/sh

dir="$1"

for f in "$dir"/*; do
	if [ -f "$f" ]; then
		bf=$(basename "$f")
		fmp4="${bf%%.*}.mp4"
		#echo "$f"
		#echo "$bf"
		#echo "$fmp4"
		ffmpeg -i ./"$bf" -sn -dn -c copy -map_chapters -1 -strict -2 ./"$fmp4"
		rm "$f"
	fi
done
