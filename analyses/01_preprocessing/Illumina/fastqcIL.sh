#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:20:00
#SBATCH -J Efacium_fastqc
#SBATCH --mail-type=ALL
#SBATCH --mail-user hanna.hyllander.8450@student.uu.se
# Load modules
module load bioinfo-tools
module load FastQC

# Running FASTA
fastqc /home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz /home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz \
 -o /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Illumina
