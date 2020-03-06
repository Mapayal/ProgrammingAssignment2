#first we create a specail "matrix" object than can cache its inverse
makeCacheMatrix<-function(M=matrix()){
  I<-NULL
  set<-function(matrix){
    M<<-matrix
    I<<-NULL
  }
  get<-function(){
    m
  }
  setinverse<-function(inverse){
    I<<-inverse
  }
  list(set=set,get=get,setInverse=setInverse,getinverse=getinverse)
}
#secondly we create a function that computes the inverse of the special "matrix" returned by makeCacheMatrix above
cacheSolve<-function(x,...){
  M <- x$getinverse()
  if( !is.null(m) ) {
    message("getting cached data")
    return(M)
  }
  data <- x$get()
  M <- solve(data) %*% data
  x$setinverse(M)
  M
}