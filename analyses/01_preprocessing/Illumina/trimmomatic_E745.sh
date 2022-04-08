#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J trimmomaticfileE745
#SBATCH --mail-type=ALL
#SBATCH --mail-user hanna.hyllander.8450@student.uu.se
# Load modules
module load bioinfo-tools
module load trimmomatic
# Your commands
java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE -phred33 \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Illumina/fastqc/E745-1.L500_SZAXPI015146-56_1_clean_fastqc.zip \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Illumina/fastqc/E745-1.L500_SZAXPI015146-56_2_clean_fastqc.zip \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Illumina/trimmomatic/output_forward_paired.fq.gz \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Illumina/trimmomatic/output_forward_unpaired.fq.gz \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Illumina/trimmomatic/output_reverse_paired.fq.gz \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Illumina/trimmomatic/output_reverse_unpaired.fq.gz \
TRAILING:20
