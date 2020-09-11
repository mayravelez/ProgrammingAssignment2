## Put comments here that give an overall description of what your
## functions do

##These functions are important to create matrixes and cache the inverse of them 

## Write a short comment describing this function
##This function creates a matrix, and calculate square and not squared matrixes


makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function
## This is used to obtain cache data.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv 
}
