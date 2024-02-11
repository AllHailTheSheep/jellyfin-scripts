#!/bin/sh

dir="$1"
subtrack="$2"

for f in "$dir"/*; do
	if [ -f "$f" ]; then
		bf=$(basename "$f")
		fass="${bf%%.*}.ass"
		fmp4="${bf%%.*}.mp4"
		#echo "$f"
		#echo "$bf"
		#echo "$fmp4"
		ffmpeg -i ./"$bf" -map 0:"$subtrack" "$fass"
		ffmpeg -i ./"$bf" -c copy -dn -sn -map 0:v -map 0:1 -map 0:2 -map_chapters -1 "$fmp4"
		rm "$f"
	fi
done
