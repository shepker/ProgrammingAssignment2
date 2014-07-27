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
        cacheMean <- function(solve) {
                cache <<- solve
        }

        # Get cached value
        geatMean <- function() {
                cache
        }
        
        # Return a list
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheMean = cacheMean, getMean = getMean)
}


# Calculates the inverse of a  matrix created with makeCacheMatrix

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}
