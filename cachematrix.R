## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Function used to create a special matrix with the capability to cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        ## Declare variable capable of storing inverse matrix, initialize to NULL
        inv <- NULL

        set <- function (y){
            x<<-y
            inv<<-NULL
        }
        ## Functinos to retrieve matrix, set inverse (cache), and retrieve cached inverse
        get <- function() x
        setInv <- function(solve) inv <<-solve
        getInv <- function() inv
        
        ## Return list of functions that store information of matrix
        list (set = set, get = get, setInv = setInv, getInv = getInv)
    
    
}


## Write a short comment describing this function


##Function capable of computing and caching or retrieving cache of matrix inverse
cacheSolve <- function(x, ...) {
        ## Retrieve cached value of matrix inverse
        inv <-x$getInv()
        
        ## If retrieve value of "inv" is not NULL, return this cached matrix
        if(!is.null(inv)){
            message("getting cached data")
            return (inv)
        }
        
        ## If inverse has not yet been computed: solve and cache for future use
        data <- x$get()
        inv <-solve(data)
        x$setInv(inv)
        inv
        
        
}
