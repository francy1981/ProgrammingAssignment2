## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the makeCacheMatrix function creates a matrix object that
## can cache its inverse 

makeCacheMatrix <- function(x = matrix()) {

}
               ## Initialize the inverse property
               i <- NULL
        ## Method to set the matrix     
        set <- function( matrix ) {
               x <<- matrix
               i <<-NULL
        }

        ## Method to get the matrix

        get <- function() {
                ## Return the matrix
               x
        }
        
        ## Method to set the inverse of the matrix
        setInverse <- function(inverse) {
               i <<- inverse
        }

## Write a short comment describing this function
        ## getInverse function gets the inverse of the matrix x
        getInverse <- function() {
               ## Return the inverse property
               i
        }
        
        ## Return a list of the methods used
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
        }
## The cacheSolve function computes the inverse of the matrix
## returned by "makeCacheMatrix". If the matrix is not changed 
## and the inverse has already been calculated, than the  
## cacheSolve function retreives the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix m that is the inverse of 'x'
        m <- x$getInverse()
        
        ## Just return the inverse if its already set  
        if( !is.null(m) ) {
               message("getting cached data")
               return(m)
}

        ## Get the matrix from our object
        data <- x$get()
        ## Calculate the inverse using matrix multiplication
        m <- solve(data) %*% data
        ## Set the inverse to the object
        x$setInverse(m)
        ## Return the matrix m invese of x
        m
}
