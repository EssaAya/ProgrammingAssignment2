## This function creates a special matrix object that can cache its inverse.
 
## computes the inverse of the special matrix returned by makeCacheMatrix above. 

## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

makeCacheMatrix <- function(x = matrix()) {

}
 inverse <- NULL
     ## Functions to cache matrix and inverse
     set <- function(y) {
          x <<- y
          inverse <<- NULL
     }
     get <- function()  { x
     }
     setinv <- function(inv) inverse <<- inv
     getinv <- function() inverse
     inv_mat <- list(set = set, get = get, setinv = setinv, getinv = getinv)
     
}

## Function to inverse matrix or retreive inverse if it already exists.

cacheSolve <- function(x, ...) {
        inversion <- x$getinv()
     if(!is.null(inverse)) {    ##Message
          message("retreiving inverse")
          return(inverse)
     }
     ## If there is no previously made inversion
     data <- x$get()
     m <- solve(data, ...)
     x$setinv(inverse)
     inverse
}
