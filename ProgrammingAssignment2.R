# This program compute a matrix inverse
library(MASS) # for inversing Matrix

# Note: x must be a invertible matrix

makeCacheMatrix <- function(x){
  y <- ginv(x)
  get <- function() y
}

cachemean <- function() {
  inv <- get()
  x <- ginv(inv)
  x
}
