#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J homology_search_efaceium
#SBATCH --mail-type=ALL
#SBATCH --mail-user hanna.hyllander.8450@student.uu.se

# Load modules
module load bioinfo-tools
module load blast

# Your commands
blastn -query /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio/canu/Efaecium.contigs.fasta \
-subject /home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/reference/GCF_001720945.1_ASM172094v1_genomic.fna \
-outfmt 6 -out /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/03_homology_search/blastn/homologysearch.tab 
