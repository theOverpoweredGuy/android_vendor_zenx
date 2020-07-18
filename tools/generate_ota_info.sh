#!/bin/sh
if [ "$1" ]
then
  file_path=$1
  filename=$(basename "$file_path")
  if [ -f $file_path ]; then
    datetime=$(grep ro\.build\.date\.utc $OUT/system/build.prop | cut -d= -f2);
    echo "{\n  \"response\": [\n    {\n      \"datetime\": $datetime, \n      \"filename\": \"$filename\" \n   }\n  ]\n}" > $OUT/$ZENX_BUILD.json
  fi
fi