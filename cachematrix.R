## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Following function is similiar to the function given by the instructor.reprents a null object 

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
      
}


makeCacheMatrix <- function (x = matrix()){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
   
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list (set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
## in cacheSolve the matrix returned by makeCacheMatrix will inversed. assigns to inv. solve function will be used
## if inverse is already calculated, the message "getting cached data" willbe returned 
cacheSolve <- function (x,...){
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat,...)
  x$setInverse(inv)
  inv
}
