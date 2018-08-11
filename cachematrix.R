<<<<<<< HEAD
## The overall propose of this program is to compute the inverse matrix of the inputted invertible matrix 
## and cache the result for later use if any. 



## makeCacheMatrix creates a special "vector", 
## which is really a list of functions to
## (1) set the value of matrix; 
## (2) get the value of matrix; 
## (3) set the value of inverse matrix;
## (4) get the vlaue of inverse matrix;

makeCacheMatrix <- function(ma = matrix()) {
   inv <- NULL
   set <- function(y) {
      ma <<- y
      inv <<- NULL
   }
   get <- function() ma
   setinverse <- function(inverse) inv <<- inverse
   getinverse <- function() inv
   list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## cacheSolve is a function to return a inverse matrix of argument x
## by first looking for the cache of the inverse matrix,
## if the cache is null then compute the inverse matrix, cache and return it

cacheSolve <- function(x) {
   
   inv <- x$getinverse()
   if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
   }
   
   ma <- x$get()
   inv <- solve(ma)
   x$setinverse(inv)
   inv
      
}





## initiate object
obj <- makeCacheMatrix(matrix(rnorm(16), 4 ,4))
obj$get()
obj$getinverse()

## compute inverse matrix, cache and return
cacheSolve(obj)

## get cached inverse matrix
cacheSolve(obj)
=======
## The overall propose of this program is to compute the inverse matrix of the inputted invertible matrix 
## and cache the result for later use if any. 



## makeCacheMatrix creates a special "vector", 
## which is really a list of functions to
## (1) set the value of matrix; 
## (2) get the value of matrix; 
## (3) set the value of inverse matrix;
## (4) get the vlaue of inverse matrix;

makeCacheMatrix <- function(ma = matrix()) {
   inv <- NULL
   set <- function(y) {
      ma <<- y
      inv <<- NULL
   }
   get <- function() ma
   setinverse <- function(inverse) inv <<- inverse
   getinverse <- function() inv
   list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## cacheSolve is a function to return a inverse matrix of argument x
## by first looking for the cache of the inverse matrix,
## if the cache is null then compute the inverse matrix, cache and return it

cacheSolve <- function(x,...) {
   
   inv <- x$getinverse()
   if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
   }
   
   ma <- x$get()
   inv <- solve(ma,...)
   x$setinverse(inv)
   inv
      
}





## initiate object
obj <- makeCacheMatrix(matrix(rnorm(16), 4 ,4))
obj$get()
obj$getinverse()

## compute inverse matrix, cache and return
cacheSolve(obj)

## get cached inverse matrix
cacheSolve(obj)
>>>>>>> fb492635b4060a2f8a2cca8a1a2b7246d49a0d80
