#!/bin/bash

# 打印读取的curl命令文件名
echo curlcommand from $1

while read line 
do
	
	echo read from $1 is : $line
	if [[ "$line"==curl* ]]; then
		cmd=$line
		echo execute : $cmd
		echo $cmd | sh
		echo  '\n'
	fi
done < $1