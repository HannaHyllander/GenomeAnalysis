#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 15:00:00
#SBATCH -J Efacium_canu
#SBATCH --mail-type=ALL
#SBATCH --mail-user hanna.hyllander.8450@student.uu.se
# Load modules
module load bioinfo-tools
module load canu

# Your commands
canu -p Efaecium \
-d /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio \
genomeSize=3m useGrid=false \
-raw \
-pacbio /home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/genomics_data/PacBio/*


