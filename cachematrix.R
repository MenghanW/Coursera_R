## Put comments here that give an overall description of what your
## functions do
## These functions cache the inverse of a matrix

## Write a short comment describing this function
## The following function creates an object to obtain the inversed matrix.

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinv <- function(inverse)inv <<- inverse
	getinv <- function () inv
	list(set = set, get = get, setinv = setinv, getinv = getinv) 
}


## Write a short comment describing this function
## This function tests a matrix returned by the former function whether 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)) {
        	message("getting cached data")
        	return(inv)
        }
        data <- x$get()
        inv <- solve(data,...)
        x$setinv(inv)
        inv
}
