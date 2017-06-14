#! /bin/bash
for n in `seq 9`
do
	for m in `seq $n`
	do
		echo -n "$n*$m="`expr $n \* $m` ""
	done
	echo
done
