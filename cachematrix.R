## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#here s is Set, g is get, Setinverse is sInverse, getInverse is gInverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  s <- function(y){
    x <<- y
    inv <<- NULL
  }
  g <- function() {x}
  sInverse <- function(solveMatrix) {inv <<- solveMatrix}
  gInverse <- function() {inv}
  list(set = s, get = g, setInverse = sInverse, getInverse = gInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$gInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$g()
  inv <- solve(data)
  x$sInverse(inv)
  inv  
}
