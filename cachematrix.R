######################################################################################################
#
# The folowwing functions calculate the inverse of a matrix and save the calculated data in cahce.
# Matrix inversion is usually a costly computation and this function would help to perform that cal-
# culation once and take advantage of object persistance.
#
#
######################################################################################################
#
# The explanation below will walk you through in the validation process of these functions.
#
######################################################################################################
# Create the function below that would help you with the creation of an invertible matrix to be use 
# in the practice.
#
# creatematrix <- function(n) { i <- 1:n; 1 / outer(i - 1, i, "+") }
# 
# The script below will create an object m1 with an invertable matrix of 8x8
# m1 <- creatematrix(8); m1
######################################################################################################
#
# Create both functions: makeCacheMatrix and cacheSolve that are at the bottom of this document.
#
######################################################################################################
#
# We first create a matrix cache object with the makeCacheMatrix function.
# ms <- makeCacheMatrix(m1)
#
# When we execut the get method in the object we get the matrix that we created and assigned before.
# ms$get()
#
#           [,1]      [,2]      [,3]       [,4]       [,5]       [,6]       [,7]       [,8]
# [1,] 1.0000000 0.5000000 0.3333333 0.25000000 0.20000000 0.16666667 0.14285714 0.12500000
# [2,] 0.5000000 0.3333333 0.2500000 0.20000000 0.16666667 0.14285714 0.12500000 0.11111111
# [3,] 0.3333333 0.2500000 0.2000000 0.16666667 0.14285714 0.12500000 0.11111111 0.10000000
# [4,] 0.2500000 0.2000000 0.1666667 0.14285714 0.12500000 0.11111111 0.10000000 0.09090909
# [5,] 0.2000000 0.1666667 0.1428571 0.12500000 0.11111111 0.10000000 0.09090909 0.08333333
# [6,] 0.1666667 0.1428571 0.1250000 0.11111111 0.10000000 0.09090909 0.08333333 0.07692308
# [7,] 0.1428571 0.1250000 0.1111111 0.10000000 0.09090909 0.08333333 0.07692308 0.07142857
# [8,] 0.1250000 0.1111111 0.1000000 0.09090909 0.08333333 0.07692308 0.07142857 0.06666667
#
# If we try to get the solve of this function, we'll get the NULL value as the inverse has not been 
# created.
# ms$getsolve()
#
# NULL
#
######################################################################################################
#
# Execute the cacheSolve function to create the inverse of the matrix and saved into chaceh
# cacheSolve(ms)
#
# Once the cacheSolve functun finish, it'll give us te inverse of the matrix, and we can also
# get same data using the getsolve method in the function.
# ms$getsolve()
#
#         [,1]      [,2]      [,3]        [,4]        [,5]        [,6]        [,7]       [,8]
# [1,]      64     -2016      20160     -92400      221760     -288288      192192     -51480
# [2,]   -2016     84672    -952560    4656960   -11642400    15567552   -10594584    2882880
# [3,]   20160   -952560   11430720  -58212000   149688000  -204324119   141261119  -38918880
# [4,]  -92400   4656960  -58212000  304919999  -800414996  1109908794  -776936155  216215998
# [5,]  221760 -11642400  149688000 -800414996  2134439987 -2996753738  2118916783 -594593995
# [6,] -288288  15567552 -204324119 1109908793 -2996753738  4249941661 -3030050996  856215352
# [7,]  192192 -10594584  141261119 -776936154  2118916782 -3030050996  2175421226 -618377753
# [8,]  -51480   2882880  -38918880  216215998  -594593995   856215351  -618377753  176679358
#
# If we try togenerate the inverse of the matrix again, we'll get a message that the inverse was 
# gotten from the cache
# cacheSolve(ms)
#
# getting solve from cache
#         [,1]      [,2]      [,3]        [,4]        [,5]        [,6]        [,7]       [,8]
# [1,]      64     -2016      20160     -92400      221760     -288288      192192     -51480
# [2,]   -2016     84672    -952560    4656960   -11642400    15567552   -10594584    2882880
# [3,]   20160   -952560   11430720  -58212000   149688000  -204324119   141261119  -38918880
# [4,]  -92400   4656960  -58212000  304919999  -800414996  1109908794  -776936155  216215998
# [5,]  221760 -11642400  149688000 -800414996  2134439987 -2996753738  2118916783 -594593995
# [6,] -288288  15567552 -204324119 1109908793 -2996753738  4249941661 -3030050996  856215352
# [7,]  192192 -10594584  141261119 -776936154  2118916782 -3030050996  2175421226 -618377753
# [8,]  -51480   2882880  -38918880  216215998  -594593995   856215351  -618377753  176679358
# 
######################################################################################################
#
# Change source matrix in the object
#
######################################################################################################
# Now we'll create a new invertableinvertible matrix and invoke the set method to change the data
# m2 <- creatematrix(4); m2
# ms$set(m2)
# 
# In this case it is a 4x4 matrix
# You can get the data using the get() method of the object
# ms$get()
#
#           [,1]      [,2]      [,3]      [,4]
# [1,] 1.0000000 0.5000000 0.3333333 0.2500000
# [2,] 0.5000000 0.3333333 0.2500000 0.2000000
# [3,] 0.3333333 0.2500000 0.2000000 0.1666667
# [4,] 0.2500000 0.2000000 0.1666667 0.1428571
#
# If you try to get the inverse matrix with getsolve method, you'll get a NULL value.
# ms$getsolve()
#
# NULL
#
# Once the cachesolve function is executed, the new inverse matrix will be saved in cache.
# cacheSolve(ms)
# ms$getsolve()
#
#      [,1]  [,2]  [,3]  [,4]
# [1,]   16  -120   240  -140
# [2,] -120  1200 -2700  1680
# [3,]  240 -2700  6480 -4200
# [4,] -140  1680 -4200  2800
#
#
######################################################################################################
#
# To validate that both matrix are actually inverse, generate a plot chart for each fo the matrix
# with this script.
#
# plot(ms$get())
#
# plot(ms$getsolve())
# 
#
######################################################################################################
##
## This function create a new matrix and store the data in cache.
##
######################################################################################################
makeCacheMatrix <- function(m = matrix()) {
  s <- NULL
  set <- function(y) {
    m <<- y
    s <<- NULL
  }
  get <- function() m
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}

######################################################################################################
##
## This function calculate the inverse of a matrix if it has not yet being calculated
## and store the solved matrix in cache
##
######################################################################################################
cacheSolve <- function(m, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  s <- m$getsolve()
  
  if(!is.null(s)) {
    message("getting solve from cache")
    return(s)
  }
  
  data <- m$get()
  s <- solve(data, ...)
  m$setsolve(s)
  s
}

