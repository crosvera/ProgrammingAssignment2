## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
    M <- NULL
    set <- function(y) {
        x <<- y
        M <<- NULL
    }
    get <- function()  x 

    setinverse <- function(inverse) M <<-  inverse 

    getinverse <- function() M

    list(set = set, get = get, setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    M <- x$getinverse()

    if(!is.null(M)) {
        message("Getting inverse matrix from cache")

        return(M)
    }
    
    data <- x$get()
    M <- solve(data, ...)

    x$setinverse(M)
    
    M
}
