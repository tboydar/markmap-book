#!/bin/bash
cd book_sources
filelist=$(find $(pwd) -maxdepth 3 -type f  \( -name "*.md" \) | sort )
for filename in $filelist
do
  xpath=${filename%/*}
  xbase=${filename##*/}
  xpref=${xbase%.*}
  outputPath=${xpath/book_sources/book_sources\/_book}
  outputFullPath=${outputPath}/${xpref}.html
  
  echo "input :${filename}"
  echo "output:${outputFullPath}"
  
  mkdir -p ${outputPath}
  markmap "$filename" -o ${outputFullPath}
  
 
  echo "------------"
done
