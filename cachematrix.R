## These set of functions can be used to create a special object that stores
## a square matrix and caches it's inverse.

## makeCacheMatrix creates a list that contains a set of functions to both store and
## retrive a square matrix and it's inverse

makeCacheMatrix <- function(x = matrix()) {

}


## cacheSolve will call the list, call the inverse if it is already cached and
## calculate the inverse if it is not.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m