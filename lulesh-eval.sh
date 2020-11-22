#!/bin/bash

for i in $(seq 0 7)
do
	echo Evaluating LULESH variant number $i
        git checkout variant$i
	cd build
	make
	./bin/lulesh-v2.0-RAJA-seq.exe > ../lulesh_variant$i.out
        cd ..
done
