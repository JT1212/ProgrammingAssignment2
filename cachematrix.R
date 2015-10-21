## Put comments here that give an overall description of what your
## functions do



makeCacheMatrix <- function(x = matrix()) {
         m <- NULL
         set <- function(y) {
                 x <<- y
                 m <<- NULL
         }
         get<-function() x    
         setmatrix <- function(matrix) m <<- matrix
         getmatrix <- function() m
         list(set = set, get = get,
              setmatrix = setmatrix,
              getmatrix = getmatrix)
}




cacheSolve <- function(x, ...) {
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("get cached data")
        return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m
}
