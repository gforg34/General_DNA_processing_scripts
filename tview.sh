#!/bin/bash -x
#SBATCH --job-name=tview_job
#SBATCH --account=kgidiotis
#SBATCH --output=/home/kgidiotis/errors/tview/tview_%j.out
#SBATCH --error=/home/kgidiotis/errors/tview/tview_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=20G
#SBATCH --time=1:00:00

# Load necessary modules (if needed)
module load samtools/1.15.1 

#REF=/projects/125-emmer/Reference_genomes/Triticum_dicoccoides/Triticum_dicoccoides_v2.fasta
# Southern Levant
#BAM=/scratch/125-emmer/free-threshing/long_read_outputs/TTD140_southern/WHPBRVajis20231024-2045_sorted_dupMarked_RG.bam

# Northern Levant 
#BAM1=/scratch/125-emmer/free-threshing/long_read_outputs/TRI_18485/WHPBRVajis20231123-2014_sorted_dupMarked_RG.bam
BAM=/scratch/125-emmer/free-threshing/long_read_outputs/minimap2_wild_emmer/minimap2_North_I100g/merge_north_WE_bamfiles_filter_MAPQ.bam
#REF2B=/home/kgidiotis/reference_genomes/chr2B_wheat/Triticum_dicoccoides.WEWSeq_v.2.0.dna.chromosome.2B.fasta 
REF=/projects/125-emmer/free_threshing/ref_genomes/Triticum_dicoccoides_v2_1/GCF_002162155.2_WEW_v2.1_genomic.fna
CHROMOSOME=2B
REGION_START=39000000
REGION_END=45000000

# build index 
#samtools index -@ 8 -c $BAM

# Your tview command
#samtools tview -p ${CHROMOSOME}:${REGION_START} $BAM $REF2B

samtools tview "$BAM" "$REF"

# Unload the module 
module unload samtools/1.15.1 
