#!/bin/sh

dir="$1"
subtrack="$2"
ext="$3"

for f in "$dir"/*; do
	if [ -f "$f" ]; then
		bf=$(basename "$f")
		formatted="${bf%%.*}.$ext"
		fmp4="${bf%%.*}.mp4"
		#echo "$f"
		#echo "$bf"
		#echo "$fmp4"
		ffmpeg -i ./"$bf" -map 0:"$subtrack" "$formatted"
		ffmpeg -i ./"$bf" -strict -2 -c copy -dn -sn -map 0:v -map 0:1 -map 0:2 "$fmp4"
		rm "$f"
	fi
done
