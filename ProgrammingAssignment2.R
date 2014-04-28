# This program compute a matrix inverse
library(MASS) # for inversing Matrix

# Note: x must be a invertible matrix
# This function takes matrix x as an argument and inverted the matrix x using ginv() function 
makeCacheMatrix <- function(x){
  y <- ginv(x)
  get <- function() y
}

# This function takes return value from the above function, inverted it again and return a matrix. 
# The output value of this function is the original matrix x
cachemean <- function() {
  inv <- get()
  x <- ginv(inv)
  x
}
