## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
            x <<- y
            inv <<- NULL
}
get <- function() x
setinverse <- function(inverse) {inverse <<- inverse}
getinverse <- function() {inv}
list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function

# This function computes the inverse of a matrix returned by the function above and retrieves the inverse if it is in the cache

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if (!is.null(inv)) {
            message ("Getting cached data")
            return(inv)
    }
    mat <- x$get()
    inv <- solve(mat,...)
    x$setinverse(inv)
    inv
}
