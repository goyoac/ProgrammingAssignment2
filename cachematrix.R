## The following is a pair of functions that cache and compute the 
## inverse of a matrix.

## makeCacheMatrix creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        
        # inverse holds the cached value 
        # initially nothing is cached so set it to NULL
        inverse <- NULL
        
        # store the matrix
        set <- function(y) {
                x <<- y;
                inverse <<- NULL; # flush the cache
        }
        
        # returns the matrix
        get <- function() return(x);
        
        # caches the input argument
        setinv <- function(inv) inverse <<- inv;
        
        # retrieves the cached value
        getinv <- function() return(inverse);
        
        # return a list of functions
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## cacheSolve computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        ## gets the cached value 
        m <- x$getinv()
        
        # if cached value exists return it
        # else get the matrix, caclulate the inverse and cache it
        if(!is.null(m)) {
                message("Getting cached data...")
        } else {
                data <- x$get()
                m <- solve(data, ...)
                x$setinv(m)
        }
        
        #just one return point :)
        return(m)
}
