## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function creates a special vector that gets and sets a matrix and stores its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  w <- NULL
  set <- function(y) {
    x <<- y
    w <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) w <<- inverse
  getinverse <- function() w
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  
  w <- x$getinverse()
  if (!is.null(w)) {
    message("getting cached data")
    return(w)
  }
  data <- x$get()
  w <- solve(data, ...)
  x$setinverse(i)
  w
        ## Return a matrix that is the inverse of 'x'
}
