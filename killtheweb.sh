#!/bin/sh

set -m # Enable Job Control

for i in `seq 20`; do # start 20 jobs in parallel
#	sleep $i && 
	curl some_target
    
done

# Wait for all parallel jobs to finish
#while [ 1 ]; do fg 2> /dev/null; [ $? == 1 ] && break; done


#for i in {1..100}; do
#	curl http://stark-shelf-3751.herokuapp.com/$i
#done
