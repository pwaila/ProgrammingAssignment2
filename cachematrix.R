## function to make special matrix this is made for coursera r programming assignment
## functions cashes the matrix

## set the value of matrix
## get the value of matrix
## set inverse of matrix
## get inverse of matrix

makeCacheMatrix <- function(x = matrix()) {

	m <- NULL
      set <- function(y) {
               x <<- y
               m <<- NULL
      }
      get <- function() x
      setinverse <- function(inverse) m <<- inverse
      getinverse <- function() m
      list(set = set, get = get,
      	setinverse = setinverse,
	      getinverse = getinverse)

}


## calculates the inverse of special mean 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
