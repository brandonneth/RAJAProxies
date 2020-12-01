#!/bin/bash
source ~/.bashrc
NUMITERS=512
PROBLEMSIZE=147

for i in 0 2 6 7 9
do
	echo Evaluating LULESH variant number $i
        git checkout variant$i
	git pull
	cd build
	make
	./bin/lulesh-v2.0-RAJA-omp.exe -i ${NUMITERS} -s ${PROBLEMSIZE} > ../v${i}_i${NUMITERS}_s${PROBLEMSIZE}.out
        cd ..
done
