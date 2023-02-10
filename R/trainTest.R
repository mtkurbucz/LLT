
trainTest <- function(path,test_ratio,seed = NULL){

  set.seed(seed)

  dict <- list.dirs(path,full.names = FALSE)
  dict <- dict[2:length(dict)]
  test <- vector(mode = "list")
  train <- vector(mode = "list")

  for(i in 1:length(dict)){

    file_all <- list.files(paste(path,"/",dict[i],sep=""))
    test[[i]] <- sample(file_all,round(length(file_all)*test_ratio,0))
    train[[i]] <- setdiff(file_all,test[[i]])

  }

  out <- list(train,test)
  names(out) <- c("train", "test")

  return(out)

}
