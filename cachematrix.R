## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##zangfong 2014-07-24
makeCacheMatrix <- function(x = matrix()) {
        mtx <- NULL
        set <- function(y) {
                x <<- y
                mtx <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) mtx <<- solve
        getinverse <- function() mtx
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mtx <- x$getinverse()
        if(!is.null(mtx)) {
                message("getting inverse matrix")
                return(mtx)
        }
        data <- x$get()
        mtx <- solve(data, ...)
        x$setinverse(mtx)
        mtx
}
