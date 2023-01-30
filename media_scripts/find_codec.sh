#!/bin/bash

if [ $1 -eq 1 ]
then
# Find files with codec different than h264:
find -name \*.avi -o -name \*.mkv -o -name \*.mp4 \
    -exec ffprobe -v quiet -show_streams -show_format -of json {} \; |
  jq -c '.format.filename as $path |
         .streams[]? |
         select(.codec_type=="video" and .codec_name!="h264") |
         {codec: .codec_name, path: $path}'
else
# List all files with the appropriate code:
find -name \*.avi -o -name \*.mkv -o -name \*.mp4 \
    -exec ffprobe -v quiet -show_streams -show_format -of json {} \; |
  jq -c '.format.filename as $path |
         .streams[]? |
         select(.codec_type=="video") |
         {codec: .codec_name, path: $path}'

fi
