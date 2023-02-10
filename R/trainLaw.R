
trainLaw <- function(path,train_test,dim,lag = 1){
  
  dict <- list.dirs(path = path,full.names = FALSE)
  dict <- dict[2:length(dict)]
  cn <- vector()
  
  for(i in 1:length(dict)){
    
    train <- train_test[[1]][[i]]
    
    for(j in 1:length(train)){  
      
      file <- train[j]
      dt <- read.csv(paste(path,"/",dict[i],"/",file,sep=""),sep="\t",header = TRUE)
      
      for(k in 1:ncol(dt)){
        td <- LLT::linlaw(dt[,k],dim,lag)
        tm <- paste(rep(colnames(dt)[k],1),"#",dict[i],sep="")
        
        if(!exists("out")){
          out <- td
        }else{
          out <- cbind(out,td)
        }
        
        cn <- append(cn,tm)
        
      }
    }
  }
  
  colnames(out) <- cn
  
  return(out)
  
}
