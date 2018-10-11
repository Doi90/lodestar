#############################
### Set working directory ###
#############################

setwd("C:/Users/David/Documents/R/win-library")
                                                 
####################################
### Save list of your R packages ###
####################################

## Find your installed packages

tmp <- installed.packages()

## Create a vector of package names only

installedpkgs.local <- as.vector(tmp[is.na(tmp[,"Priority"]), 1])

## Save the vector to file

save(installedpkgs.local, file = "installed_packages_local.rda")
