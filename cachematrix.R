## Purpose: 
### Caching the inverse of a Matrix so that you do not need 
### to recompute the inverse of the same Matrix when you need it



## makeCacheMatrix function creates a special "matrix" object that can cache its inverse.
## It returns a list contains:
### 1. set: set the matrix
### 2. get: get the matrix
### 3. setinverse: set the value of the inverse matrix
### 4. getinverse: get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## cacheSolve function computes the inverse of the special "matrix"
## If the inverse has already been calculated,
### the function will retrieve the inverse from the cache.
## If the inverse has not been calculated before,
### this function will compute it.

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}


## Some examples:

matrix1<-makeCacheMatrix(matrix(c(2,2,3,2),nrow=2))
matrix1
cacheSolve(matrix1)
cacheSolve(matrix1)


matrix2<-makeCacheMatrix(matrix(c(1,0,5,2,1,6,3,4,0),nrow=3))
matrix2
cacheSolve(matrix2)
cacheSolve(matrix2)
