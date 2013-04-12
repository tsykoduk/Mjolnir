#!/bin/sh

set -m # Enable Job Control

for i in `seq 50`; do # start 30 jobs in parallel
#	sleep $i && 
    curl http://st-beta.herokuapp.com/
    curl http://st-beta.herokuapp.com/api/v1/video/search/?callback=jQuery17202604365944862366_1360951804808&term=rock&limit=15&_=1360951805354
    curl http://st-beta.herokuapp.com/video/4a89ac59e2315112a9b9/BILL%20NYE%20MUSIC%20VIDEO:%20ROCKS%20ROCK%20HARDER
    curl http://st-beta.herokuapp.com/
    curl http://st-beta.herokuapp.com/api/v1/video/search/?callback=jQuery17202604365944862366_1360951804808&term=rock&limit=15&_=1360951805354
    curl http://st-beta.herokuapp.com/video/4a89ac59e2315112a9b9/BILL%20NYE%20MUSIC%20VIDEO:%20ROCKS%20ROCK%20HARDER
    curl http://st-beta.herokuapp.com/
    curl http://st-beta.herokuapp.com/api/v1/video/search/?callback=jQuery17202604365944862366_1360951804808&term=rock&limit=15&_=1360951805354
    curl http://st-beta.herokuapp.com/video/4a89ac59e2315112a9b9/BILL%20NYE%20MUSIC%20VIDEO:%20ROCKS%20ROCK%20HARDER
    curl http://st-beta.herokuapp.com/
    curl http://st-beta.herokuapp.com/api/v1/video/search/?callback=jQuery17202604365944862366_1360951804808&term=rock&limit=15&_=1360951805354
    curl http://st-beta.herokuapp.com/video/4a89ac59e2315112a9b9/BILL%20NYE%20MUSIC%20VIDEO:%20ROCKS%20ROCK%20HARDER
    curl http://st-beta.herokuapp.com/
    curl http://st-beta.herokuapp.com/api/v1/video/search/?callback=jQuery17202604365944862366_1360951804808&term=rock&limit=15&_=1360951805354
    curl http://st-beta.herokuapp.com/video/4a89ac59e2315112a9b9/BILL%20NYE%20MUSIC%20VIDEO:%20ROCKS%20ROCK%20HARDER
	sleep .5
	curl http://st-beta.herokuapp.com/
    curl http://st-beta.herokuapp.com/api/v1/video/search/?callback=jQuery17202604365944862366_1360951804808&term=rock&limit=15&_=1360951805354
    curl http://st-beta.herokuapp.com/video/4a89ac59e2315112a9b9/BILL%20NYE%20MUSIC%20VIDEO:%20ROCKS%20ROCK%20HARDER
    curl http://st-beta.herokuapp.com/
    curl http://st-beta.herokuapp.com/api/v1/video/search/?callback=jQuery17202604365944862366_1360951804808&term=rock&limit=15&_=1360951805354
    curl http://st-beta.herokuapp.com/video/4a89ac59e2315112a9b9/BILL%20NYE%20MUSIC%20VIDEO:%20ROCKS%20ROCK%20HARDER
    curl http://st-beta.herokuapp.com/
    curl http://st-beta.herokuapp.com/api/v1/video/search/?callback=jQuery17202604365944862366_1360951804808&term=rock&limit=15&_=1360951805354
    curl http://st-beta.herokuapp.com/video/4a89ac59e2315112a9b9/BILL%20NYE%20MUSIC%20VIDEO:%20ROCKS%20ROCK%20HARDER
    curl http://st-beta.herokuapp.com/
    curl http://st-beta.herokuapp.com/api/v1/video/search/?callback=jQuery17202604365944862366_1360951804808&term=rock&limit=15&_=1360951805354
    curl http://st-beta.herokuapp.com/video/4a89ac59e2315112a9b9/BILL%20NYE%20MUSIC%20VIDEO:%20ROCKS%20ROCK%20HARDER
    curl http://st-beta.herokuapp.com/
    curl http://st-beta.herokuapp.com/api/v1/video/search/?callback=jQuery17202604365944862366_1360951804808&term=rock&limit=15&_=1360951805354
    curl http://st-beta.herokuapp.com/video/4a89ac59e2315112a9b9/BILL%20NYE%20MUSIC%20VIDEO:%20ROCKS%20ROCK%20HARDER
    
done

# Wait for all parallel jobs to finish
#while [ 1 ]; do fg 2> /dev/null; [ $? == 1 ] && break; done


#for i in {1..100}; do
#	curl http://stark-shelf-3751.herokuapp.com/$i
#done
