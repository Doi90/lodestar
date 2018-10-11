#!/bin/bash

#SBATCH --job-name=Palindrome
#SBATCH -p cloud

#SBATCH --ntasks=1

#SBATCH --time 0:15:00

#SBATCH --mail-user="davidpw@student.unimelb.edu.au"
#SBATCH --mail-type=ALL

module load R

R --vanilla < Coding_Club_Palindrome.R 