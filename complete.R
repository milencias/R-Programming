complete <- function(directory,id=1:332){
#create the list of files
  datfiles<-list.files(directory,full.names = TRUE)
  #create an empty data frame
  dat <- data.frame()
  
  for(i in id){
  #read in the file
    temp<- read.csv(datfiles[i],header=TRUE)
    #delete rows that do not have complete cases
    temp<-na.omit(temp)
    
    #count all of the rows with complete cases
    ccrow<-nrow(temp)
    
    #enumerate the cases by index
    dat<-rbind(dat,data.frame(i,ccrow))
   
  }
    return(dat)
}


# test the function
complete(directory = '~/Desktop/specdata', c(2, 4, 8, 10, 12))

complete(directory = '~/Desktop/specdata', 30:25)

complete(directory = '~/Desktop/specdata', 3)
