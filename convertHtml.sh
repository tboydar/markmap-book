#!/bin/bash
cd mindmap
filelist=$(find $(pwd) -maxdepth 3 -type f  \( -name "*.md" \) | sort )
for filename in $filelist
do
  xpath=${filename%/*}
  xbase=${filename##*/}
  xpref=${xbase%.*}
  outputPath=${xpath/mindmap/_book\/mindmap}
  outputFullPath=${outputPath}/${xpref}.html
  
  echo "input :${filename}"
  echo "output:${outputFullPath}"
  
  mkdir -p ${outputPath}
  markmap "$filename" -o ${outputFullPath}
  
 
  echo "------------"
done
