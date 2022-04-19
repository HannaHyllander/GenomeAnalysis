#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J prokka_efaecium
#SBATCH --mail-type=ALL
#SBATCH --mail-user hanna.hyllander.8450@student.uu.se
# Load modules
module load bioinfo-tools
module load prokka

# Code
prokka --outdir /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/02_annotation/pacbio/prokka/ \
--prefix annotation /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio/canu/Efaecium.contigs.fasta 
