pollutantmean <- function(directory, pollutant, id = 1:332) {
  data<-data.frame()
  for (i in id) {
      data_tmp <- read.csv(paste(directory,"/",sprintf("%03d", i),".csv",sep=""), header=TRUE)
      data <- rbind(data,data_tmp)
  }
  round(mean(data[, pollutant], na.rm = TRUE),3)
}
