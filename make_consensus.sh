#!/bin/bash

# Parameters:
# $1 = Animal (Genome Name)

# Example Usage: ./make_consensus.sh AmericanPika

# Go to directory containing the alignments for each cluster, for this species
# (both original and Gblocks-improved alignments)
cd /Users/atma/GenomeAnalysis/Fulllength_L1s/Clusters/$1

# Make a consensus sequence from each Gblocks-improved alignment file
for i in *_gb.afa;
do
	piler -cons $i -out "${i/.afa}"_cons.fasta -label "${i/.afa}"_cons
done	

# Concatenate all the consensus seqs for this species into one file
cat *_cons.fasta > $1_all_cluster_cons.fasta 

