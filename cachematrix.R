## A matrix is assigned value

## the first part of the program assigns the value

makeCacheMatrix <- function(x = numeric()) {
    m <- NULL
    set <- function(y) {
    x <<- y
    m <<- NULL
  }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)

}


## this second part of the program solves for the inverse of the matrix, if the inverse is already solved then it gets the earlier cached value.
cacheSolve <- function(x, ...) {
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

