## 
## 

## Cache inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  i<<-NULL
   set=function(x){
     i<<-NULL
     y<<-x
   }
  get=function(){x}
  setinverse<-function(x=matrix()){i<<-solve(x)} 
  getinverse<-function(){i} 
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
  }
# return inverse of a matrix if a matrix has inverse in cache
#otherwise calculate the inverse

cacheSolve <- function(x=list(),...) {
        ## Return a matrix that is the inverse of 'x'
i<-x$getinverse()
   if(!is.null(i)){
    print("getting inverse from cache" )
    return(i)
  }
   else {
   dat<-x$get()
   i<-x$setinverse(dat,...)}
return(i)
}

