#!/bin/sh

dir="$1"
for f in "$dir"/*; do
	if [ -f "$f" ]; then
		bf=$(basename "$f")
		fmp4="${bf%%.*}.mp4"
		ffmpeg -i ./"$bf" -dn -dn -map 0:0 -map 0:1 -map 0:2 -map_chapters -1 -strict -2 ./"$fmp4"
		rm "$f"
	fi
done
