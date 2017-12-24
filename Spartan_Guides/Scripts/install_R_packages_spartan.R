###################################
### Load R package names vector ###
###################################

## loads .rda file generated on your local
## computer and puts installedpkgs.local
## into the global environment

load("~/R/installed_packages_local.rda")

############################################
### Create list of R packages to install ###
############################################

## Find the R packages already installed on Spartan
## NB: If you already have R packages in your
## user-specific library it will include these too

tmp <- installed.packages()

## Create a vector of package names only

installedpkgs.spartan <- as.vector(tmp[is.na(tmp[,"Priority"]), 1])

## Create a vector that includes only the package names NOT already installed

missing <- setdiff(installedpkgs.local, installedpkgs.spartan)

##########################
### Install R packages ###
##########################

install.packages(missing,  # vector of packages to install
                 lib = "~/R/lib/",  # the file path to your user-specific library
                 repos = "https://cran.ms.unimelb.edu.au/")  # Need to specify a CRAN mirror 

##############################################
### Test to make sure everything installed ###
##############################################

## Find updated list of installed packages

tmp <- installed.packages()
tmp <- as.vector(tmp[is.na(tmp[,"Priority"]), 1])

## Find if any from your local machine are still missing

still_missing <- setdiff(installedpkgs.local, tmp)

if(length(still_missing) >0){
  write(still_missing, "~/R/Still_Missing_R_Packages.txt")
  
  print("Not all R packages installed successfully.")
} else {
  print("All R packages installed successfully")
}
