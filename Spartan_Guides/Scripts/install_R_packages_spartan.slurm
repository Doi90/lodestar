#!/bin/bash

###################################
### Set up Spartan Requirements ###
###################################

#SBATCH -p cloud
#SBATCH --ntasks=1
#SBATCH -t 0-2:00:00  ## This asks for two hours of wall time.
                      ## Feel free to modify if you have an
                      ## exceptional amount of packages

#############################
### Load required modules ###
#############################

module load PROJ  ## required for some spatial packages
module load GDAL  ## required for some spatial packages
module load R/3.4.0-GCC-4.9.2  ## the at-time-of-writing current R version

##############
### Open R ###
##############

R --no-save  ## Open R, don't save working directory on close

###############################
### R Script file to be run ###
###############################

source("~/R/install_R_packages_spartan.R") 	
