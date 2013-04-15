#!/bin/sh

#set -m # Enable Job Control

#No job control in bash on dynos. Need to refactor into ruby + threads

# legacy. You should use env variables now or just pass the targets as a a command line list
# TARGET=`cat ./target.list`

TARGETS=$@

echo $TARGETS

#for i in `seq 10`; do # start 20 jobs in parallel
#	sleep $i && 
#	for times in {1..10};
#	do
		for t in $TARGETS
		do
			curl -s -S -L -w "%{http_code} total_time=%{time_total} time_connect=%{time_connect} time_start=%{time_starttransfer} speed=%{speed_download} %{url_effective}\\n" "${t}" -o /dev/null
		done
#	done
#done


#Wait for all parallel jobs to finish
#while [ 1 ]; do fg 2> /dev/null; [ $? == 1 ] && break; done


#for i in {1..100}; do
#	curl http://stark-shelf-3751.herokuapp.com/$i
#done
