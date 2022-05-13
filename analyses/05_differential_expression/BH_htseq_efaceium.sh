#!/bin/bash -l

#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J BH_htseq_efaceium
#SBATCH --mail-type=ALL
#SBATCH --mail-user hanna.hyllander.8450@student.uu.se

# Load modules
module load bioinfo-tools samtools htseq

# Converting bam-files to bai files

cd /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/04_mapping/BH_sample/
samtools index BH_72.bam
samtools index BH_73.bam
samtools index BH_74.bam

# Commands
htseq-count -f bam -r pos -i ID -t CDS -s no \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/04_mapping/BH_sample/*.bam \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/02_annotation/pacbio/prokka/annotation_htseq.gff > \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/05_differential_expression/BH_htseq_count.txt
