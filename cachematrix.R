## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The following function creates a list that has funcction to get and set the values
## of the matrix and it's inverse.
makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setinverse <- function(inv) inverse <<- inv
        getinverse <- function() inverse
        list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)
}


## The following function returns the inverse of a matrix. It first checks whether
## the inverse exists and then proceeds with the computation. If the inverse exists,
## it gets the cached value and skips the computation.
 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinverse(inverse)
        inverse
}
