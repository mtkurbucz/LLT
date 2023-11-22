
linlaw <- function(series,dim,lag = 1){
  
  mtx <- LLT::tdembed(series,dim,lag)
  
  ed <- eigen(mtx)
  eve <- ed$vectors
  out <- eve[,ncol(eve)]
  
  return(out)
  
}
