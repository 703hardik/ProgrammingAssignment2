## makeCacheMatrix is a function that cache the inverse of the matrix 
## cacheSolve is a function that first checks for the given matrix in cache if it is there then it returns the required
##inverse or else it will cache the inverse of the new matrix entered then returns the the inverse

## below are the functions that cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
inver <- NULL
  set <- function(y) {
    x <<- y
    inver <<- NULL
  }
  get <- function() 
    {x}
  setinverse <- function(inverse) 
    {inver <<- inverse}
  getinverse <- function() 
    {inver}
  list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)
}



cacheSolve <- function(x, ...) {
        inver<-x$getinverse()
     if (!is.null(inver))
         {message("getting cache memory data")
                        return(inver)}
data<- x$get()
inver<- solve(data,...)
x$setinverse(inver)

inver
}
