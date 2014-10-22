## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

 ## Initialise the inverse property 
	i <- NULL
 ## to set the matrix
	set <- function( matrix ) {
	x <<- matrix
	i<<-NULL

}

 ## to get the matrix
        get <- function() {
        
 ## Return the matrix
        x      
 }
 
 ## to set the inverse of the matrix
 getInverse <- function() {
 ## Return the inverse property
        i      
}

 ## Return a list of the methods used
        list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
