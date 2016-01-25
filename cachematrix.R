## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# creates a matrix that caches it's inversion
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setInverse <- function (inverse) inv <<- inverse
    getInverse <- function() inv
    list( set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
# gets teh inverse either from cache or via calculation , then caches the result
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)){
            print("Getting cached inverse")
            return(inv)
        }
    data <- x$get()
    inv <- solve(data)
    x$setInverse(inv)
    inv
    
}
