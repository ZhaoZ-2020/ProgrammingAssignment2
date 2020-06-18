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

}


## cacheSolve function computes the inverse of the special "matrix"
## If the inverse has already been calculated,
### the function will retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
