#!/bin/bash

target="/home/ana/Sacada"

for i in 45 44 43 170 290 34 19	50 42 41 320 286 63 3 258 303 168 36 263 48 47 40 289 196 227 254 173 235 28 176 241 216 71 276 251 ; do
	folder_name="$i"
	mkdir -p "$target/$folder_name"
	unzip -d "$target/$folder_name" "$target/$i.zip"
done
