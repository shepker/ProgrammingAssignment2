# See README.md for instructions on running the code and output from it
# The assignment states that running the code is not part of the grading 
# but I have the instructions anyway.

# makeCacheMatrix is a function that returns a list of functions
# Its puspose is to store a martix and a cached value of the inverse of the 
# matrix. Contains the following functions:
# * setMatrix      set the value of a matrix
# * getMatrix      get the value of a matrix
# * cacheInverse   get the cahced value (inverse of the matrix)
# * getInverse     get the cahced value (inverse of the matrix)
#

makeCacheMatrix <- function(x = numeric()) {
        
        # holds the cached value or NULL 
		
        # Initially cache is set to NULL
        cache <- NULL
        
        # Setter for matrix
        setMatrix <- function(newValue) {
                x <<- newValue
                # New value, flush cache
                cache <<- NULL
        }

        # Getter for matrix
        getMatrix <- function() {
                x
        }

        # Cache the argument 
        cacheInverse <- function(solve) {
                cache <<- solve
        }

        # Get cached value
        getInverse <- function() {
                cache
        }
        
        # Return a list
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


# Calculates the inverse of a  matrix created with makeCacheMatrix

cacheSolve <- function(y, ...) {
        # get the cached value
        inverse <- y$getInverse()
        # if value exists return it
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        # otherwise get  matrix, calculate the inverse and store it 
        data <- y$getMatrix()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        
        # return the inverse
        inverse
}
