## makeCacheMatrix is a fucntion created, which will create a matrix and cache its inverse 
## the function will compute the inverse of the matrix created

## makeCacheMatrix is a created function, wherein a matrix can be created. This created matrix, with the get function (within the makeCacheMatrix function will get the matrix and the setinverse will set the inverse of the matrix created. get inverse will get that inverse of the matrix formed.

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}

## cacheSolve funtion created will return the inverse of the matrix vreated using the above given funtion
cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if (!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
        ## Return a matrix that is the inverse of 'x'

