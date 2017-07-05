#!/bin/bash

for file in ./output/*.log ; do 

	echo $file
	echo `basename $file` >> output.log
	cat $file >> output.log

done
