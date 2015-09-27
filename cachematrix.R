## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makecacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmat <- function(solve) m <<- solve
  getmat <- function() m
  list(set = set, get = get,
       setmat = setmat,
       getmat = getmat);
}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
  m <- x$getmat()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmat(m)
  m
}
