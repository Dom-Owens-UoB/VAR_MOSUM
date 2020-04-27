#!/bin/bash
#PBS -l nodes=1:ppn=4,walltime=12:00:00
module load languages/R-3.4.4-ATLAS-gcc-7.1.0
export WORK_DIR=$HOME/sims
cd $WORK_DIR
Rscript HPC_sims.R

