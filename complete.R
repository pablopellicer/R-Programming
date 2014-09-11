complete <- function(directory, id = 1:332) {
  data<-data.frame()
  for (i in id) {
    data_tmp <- read.csv(paste(directory,"/",sprintf("%03d", i),".csv",sep=""), header=TRUE)
    data <- rbind(data,c(i,sum(complete.cases(data_tmp))))
  }
  names(data)<-c("id","nobs")
  return(data)
}