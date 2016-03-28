#!/bin/bash
list=$(ls $1)
for f in $list
do
  text=$(file $1/$f | grep -cw "text")
  if ((text>0))
  then
    echo $f
    awk 'NR<4' $1/$f
    echo -e "...\n"
  fi
done
