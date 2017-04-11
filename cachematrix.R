## Put comments here that give an overall description of what your
## functions do
## This function call the inverse of matrix if it does not present in cache
##It is mandetory to clear cache elements matrixA, inverseofmatrixA 
##before calling the function

myfunction <- function(fnelement = c(4,7,2,6), fnrow=2, fncol=2)
{
  
  mymatrix <- matrix(fnelement, nrow = fnrow, ncol = fncol,byrow = TRUE)
 
  cacheResult <- cacheSolve(mymatrix) ##In this step Inverse of matrix function is called
  cacheresult1 <- cacheSolve(mymatrix)  ##In this step cache element is used
  
  
}

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrixA <<- x   ##copy original matric into cache
  inverseofmatrixA <<- solve(x)  ## take inverse of original matrix and copy it into the cache element

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x' by this function either invesre is calulated or 
        ## invese for cache is returned back. 
  if (!is.null(inverseofmatrixA) && identical(x, matrixA))
  {
    inverseofmatrixA
  }
  else
  {
    makeCacheMatrix(x)
  }
  
  
}
