#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    COUNT="$(wc -w "${f}" | cut -d' ' -f1)"
    SIZE="$(du -sh "${f}" | cut -f1)"
    echo "Processing $f file..."
    echo "File size: $SIZE"
    echo "Word count: $COUNT"
  fi
done

