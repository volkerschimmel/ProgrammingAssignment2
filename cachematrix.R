## Put comments here that give an overall description of what your
## functions do

## The function creates two matrices which will be combined into a list in the end
## At first it creates the original to be stored in 

makeCacheMatrix <- function(x = matrix()) {
  org<-function(){
    x<<-y
  }
  inv<-function(){
    solve(y)
  }
  matrices<<-list(org = org, inv = inv)
}


## The $inverse part of the returned list is tested and if not zero returned
## If $inverse is empty, it means that the inverse has to be calculated first, which is the remainder of the function 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-matrices$inv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  x$inv(x)
  matrices$inv(x)
}
