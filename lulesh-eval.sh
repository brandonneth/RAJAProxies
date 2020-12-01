#!/bin/bash
source ~/.bashrc
NUMITERS=512
PROBLEMSIZE=$1

for i in 0 2 6 7 9
do
	echo Evaluating LULESH variant number $i
        echo git checkout variant$i
	echo cd build
	echo make
	echo "./bin/lulesh-v2.0-RAJA-omp.exe -i ${NUMITERS} -s ${PROBLEMSIZE} > ../v${i}_i${NUMITERS}_s${PROBLEMSIZE}.out"
        echo cd ..
done
