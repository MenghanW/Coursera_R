## Put comments here that give an overall description of what your
## functions do
## These functions cache the inverse of a matrix

## Write a short comment describing this function
## The following function creates an object to obtain the inversed matrix.

makeCacheMatrix <- function(x = matrix()) {
	## initialize the object inv to store reversed matrix later
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinv <- function(inverse)inv <<- inverse
	getinv <- function () inv
	## Create new object by returning a list to parent environment
	list(set = set, get = get, setinv = setinv, getinv = getinv) 
}


## Write a short comment describing this function
## This function tests a matrix returned by the former function whether 

cacheInv <- function(x, ...) {
        ## Retrieve the inverse
        inv <- x$getinv()
        ## Check whether the inverse is NULL, if not, it can be returned to the parent environment
        if(!is.null(inv)) {
        	message("getting cached data")
        	return(inv)
        }
        ## Get and set the inverse of the input data
        data <- x$get()
        inv <- inv(data,...)
        x$setinv(inv)
        inv
}
