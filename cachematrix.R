## Put comments here that give an overall description of what your
## functions do

## Creates a list which contains a matrix and caches its inverse
## if it's been previously calculated and the matrix hasn't changed since then.

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	} 
	get <- function() x
	setinv <- function(y) inv <<- y
	getinv <- function() inv
	list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()

        if (is.null(inv)){
           	inv <- solve(x$get(), ...)
        	x$setinv(inv)
        }

        inv
}
