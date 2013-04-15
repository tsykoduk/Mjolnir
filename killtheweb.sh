#!/bin/sh

TARGETS=$@

#lets run a few ruby processes in parallel. They don't need to be aware of each other, just need to kick off.
	for times in {1..10};
	do
		source ./killtheweb $TARGETS
	done
#done

#We need some manner of not dying here. Perhaps a ugly infinite loop?

