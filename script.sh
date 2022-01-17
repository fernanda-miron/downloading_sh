#!/bin/bash

while read linea
			do
				echo "[DEBUG] working in line: $linea"
				dir=$(echo "$linea" | cut -f1)
				file_1=$(echo "$linea" | cut -f2)
				file_2=$(echo "$linea" | cut -f3)
				file_3=$(echo "$linea" | cut -f4)
				echo "Creating dir $dir with files $file_1, $file_2 and $file_3"
				mkdir $dir
				(cd $dir && curl -O $file_1)
				(cd $dir && curl -O $file_2)
				(cd $dir && curl -O $file_3)
			done < $1
