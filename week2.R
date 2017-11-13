library(readr)
library(dplyr)


pollutantmean("specdata","nitrate", 70:72)

pollutantmean <- function(path, polltant,id) {
  files <- dir(path, pattern="\\.csv", full.names = TRUE)
  tables = lapply(files[id],read_csv)
  #polltant.data<-do.call(rbind, tables)[,polltant]
  polltant.data<-bind_rows(tables)[,polltant]
  polltant.mean<-lapply(polltant.data, mean, na.rm=TRUE)
  return(polltant.mean)
}
  


