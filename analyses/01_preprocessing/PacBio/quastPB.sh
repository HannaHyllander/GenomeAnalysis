#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 15:00:00
#SBATCH -J Efacium_quast
#SBATCH --mail-type=ALL
#SBATCH --mail-user hanna.hyllander.8450@student.uu.se
# Load modules
module load bioinfo-tools
module load quast

# Your commands
quast.py /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio/canu/Efaecium.contigs.fasta \
-r /home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/reference/GCF_001720945.1_ASM172094v1_genomic.fna \
-o /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio/quast

