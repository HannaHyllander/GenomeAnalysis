#!/bin/bash --login

#SBATCH -A uppmax2022-2-5
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J bwa_efaceium
#SBATCH --mail-type=ALL
#SBATCH --mail-user hanna.hyllander.8450@student.uu.se

module load bioinfo-tools bwa samtools

#Commands

bwa index /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio/canu/Efaecium.contigs.fasta

#BH_ERR1797972
bwa mem /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio/canu/Efaecium.contigs.fasta \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_1.fastq.gz \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_2.fastq.gz \
| samtools sort -o /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/04_mapping/BH_72.bam

#BH_ERR1797973
bwa mem /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio/canu/Efaecium.contigs.fasta \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_1.fastq.gz \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_2.fastq.gz \
| samtools sort	-o /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/04_mapping/BH_73.bam

#BH_ERR1797974
bwa mem /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio/canu/Efaecium.contigs.fasta \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_1.fastq.gz \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_2.fastq.gz \
| samtools sort -o /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/04_mapping/BH_74.bam

#SERUM_ERR1797969
bwa mem /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio/canu/Efaecium.contigs.fasta \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_1.fastq.gz \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_2.fastq.gz \
| samtools sort -o /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/04_mapping/SERUM_69.bam

#SERUM_ERR1797970
bwa mem /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio/canu/Efaecium.contigs.fasta \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_1.fastq.gz \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_2.fastq.gz \
| samtools sort -o /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/04_mapping/SERUM_70.bam

#SERUM_ERR1797971
bwa mem /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/01_preprocessing/Pacbio/canu/Efaecium.contigs.fasta \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_1.fastq.gz \
/home/hahy8450/GenomeAnalysis/GenomeAnalysis/data/rawdata/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_2.fastq.gz \
| samtools sort -o /home/hahy8450/GenomeAnalysis/GenomeAnalysis/result/04_mapping/SERUM_71.bam
