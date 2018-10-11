# A palindromic number reads the same both ways. What is the largest palindrome made from the product
# of two 2-digit numbers?

x <- 10:99   # all 3 digit numbers

prod3d <- numeric(0)   # blank vector

for(i in 1:length(x)){   # get all 3d products
  tmp <- x[i]*x
  prod3d <- c(prod3d,tmp)
}

revNumber <- function(x){    # function prints reverse of number
  as.numeric(paste(substring(x, nchar(x):1, nchar(x):1), collapse = ""))
}

is.palindrome <- function(x){   # function to test palindrome status
  x[1] == revNumber(x[1])
}

palin3d <- numeric(0)

for(i in 1:length(prod3d)){   # test palindrome status
  tmp <- is.palindrome(prod3d[i])
  palin3d <- c(palin3d, tmp)
}

palin3d[is.na(palin3d)] <- 0

Lar_Palin <- paste0("The largest palindrome that is the product of two two-digit numbers is ",
                    max(prod3d[as.logical(palin3d)]))

write.table(Lar_Palin[1], "Largest_Palindrome.txt", row.names = FALSE, col.names = FALSE)
