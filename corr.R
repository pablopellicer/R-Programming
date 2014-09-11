corr <- function(directory, threshold = 0) {
  data<-vector()
  files=list.files(path=directory)
  for (i in 1:length(files)) {
    data_tmp <- read.csv(paste(directory, paste(files[i], sep = "."), sep = "/"), header=TRUE)
    if(sum(complete.cases(data_tmp))>threshold){
      data_clean<-data_tmp[complete.cases(data_tmp),]
      data <- c(data,cor(data_clean$sulfate,data_clean$nitrate))
    }
  }
  return(data)
}