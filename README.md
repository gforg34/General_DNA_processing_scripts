README file to give information about my scripts: 
Contact: gidiotis@gmail.com (external email)

picarding.sub --> 
	script that tries to generate a dictionary genome file using the picard.jar software
	Note: picard path can be found only by using $PICARDPATH

Prefast.py --> python script (non-functional through the cluster/use it locally) to retreive the RNAseq data using
	prefetch (did it in my WUR thesis) 

bam_statistics.sub --> bash script including multiple statistics using samtools: 
	- samtools flagstat 
	- samtools stats
	- samtools view 
	- samtools checkquality

mummer_pipeline.sh --> runs mummer pipeline for seq alignnment:
	- samtools faidx 
	- nucmer 
	- mummerplot
	- show-diff
	- show-aligns

find_the_chimeric.sub --> bash script: uses the grep and awk functions to retreive the chimeric alignmens within the 
			area of 37Mbp and 47Mbp of chromosome 2B(LSYQ02000004.1) 

fill_the_Ns.sub --> bash script
	- tgsgapcall : to fill the NNNs of the Wild Emmer genome assembly 
	using the long-read sequencing data 
	I applied it using the TRI18485 southern Levant data against the WEW v2.0 genome  

conda_script.sh --> download modules through the conda environment (my_env) 


remove_dups.sub --> removes PCR duplicates from the sequencing data 
		- picard tools
		Note: use the flagstats to check the PCR duplicates (generated: bam_statistics.sh

merge_fastqs.sub --> merges two fastq files, in order to be used in the tgsgapcloser script



