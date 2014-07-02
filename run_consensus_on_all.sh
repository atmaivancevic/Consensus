#!/bin/bash

#L1s
arr=( 'Mouse' 'Human' 'Marmoset' 'CrabeatingMacaque' 'PrairieVole' 'Rat' 'GreenMonkey' 'Goat' )

for j in "${arr[@]}"
do
	echo $j
	./make_consensus.sh "$j"
done
