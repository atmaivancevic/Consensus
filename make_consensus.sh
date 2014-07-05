#!/bin/bash

# Parameters:
# $1 = Animal (Genome Name)

# Example Usage: ./make_consensus.sh AmericanPika

# Go to directory containing the alignments for each cluster, for this species
# (both original and Gblocks-improved alignments)
cd /scratch/atmaGenomes/GenomeAnalysis/Fulllength_L1s/2nd_Clustering/Clusters/$1/

# Make a consensus sequence from each Gblocks-improved alignment file
for i in *_gbHalf.afa; #currently set to make consensus out of gbHalf alignments
do
	piler -cons $i -out "${i/.afa}"_cons.fasta -label "${i/.afa}"_cons
done	

# Concatenate all the consensus seqs for this species into one file
cat *_gbHalf_cons.fasta > $1_all_cluster_gbHalf_cons.fasta 

