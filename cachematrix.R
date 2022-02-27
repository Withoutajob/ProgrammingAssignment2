## Put comments here that give an overall description of what your
## functions do

## It's basically the same as the former vector function except for the changing in in the class of x variable 
##and the renomination of the m in to inverse 

makeMatrix <- function(x = matrix())
              
		  {
			inverse <- NULL
			set <- function(y) {
			x <<- y
			inverse <<- NULL
			}
			
			get <- function()x
			setinverse <- function(solve) inverse <<- solve
			getinverse <- function() inverse
			list(set = set, get = get,
			     setinverse = setinverse,
			     getinverse = getinverse)
         	   }


## I changed the name of the objects stated in the "makeMatrix" function in order to match and changed 
## the function from "mean" to "solve"

cacheSolve <- 	function(x, ...) {
               	inverse <- x$getinverse()
        		if(!is.null(inverse)) {
               	message("getting cached data")
                	return(inverse)
        		}
       		data <- x$get()
        		inverse <- solve(data, ...)
        		x$setinverse(inverse)
        	## Return a matrix that is the inverse of 'x'	
                        inverse
		}


        

