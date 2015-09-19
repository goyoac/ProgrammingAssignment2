## Programming Assignment 2: Lexical Scoping

Following code shows how to use the functions in `cachematrix.R`.

        # read the R script
        > source("cachematrix.R")

        # create a square matrix
	> a <- makeCacheMatrix(matrix(c(11,22,33,44),nrow = 2, ncol = 2));
	
	# or
	> a <- makeCacheMatrix()
        > a$set(matrix(c(11,22,33,44),nrow = 2, ncol = 2))
        
        # get the matrix
        > a$get()
             [,1] [,2]
        [1,]   11   33
        [2,]   22   44
        
        # compute the inverse. 1st time: real computing
        > cacheSolve(a)
                    [,1]        [,2]
        [1,] -0.18181818  0.13636364
        [2,]  0.09090909 -0.04545455
        
        # compute the inverse. 2nd time: getting the cahced value
        > cacheSolve(a)
        Getting cached data...
                    [,1]        [,2]
        [1,] -0.18181818  0.13636364
        [2,]  0.09090909 -0.04545455        

