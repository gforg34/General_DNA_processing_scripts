#!/bin/bash -x
#SBATCH --job-name=my_job
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --time=1:00:00

# Load Conda module
module load conda

conda config --add channels conda-forge
conda config --add channels defaults
conda config --add channels r
conda config --add channels bioconda

# Create and activate virtual environment
conda create --name venve python=3.8
conda activate venve

# Install dependencies (if needed)
# conda install package1 package2
# or
# pip install package1 package2

# Execute Python script
#python 

# Deactivate virtual environment (optional)
conda deactivate

