pollutantmean<-function(directory,pollutant,id=1:332){
  #create the list of files
  datfiles<-list.files(directory,full.names = TRUE)
  #create an empty data frame
  dat <- data.frame()
  
  #loop through the list of files until it can find id
  for(i in id){
    #read the file in
    temp<- read.csv(datfiles[i],header=TRUE)
    #add files to the main data frame
    dat<-rbind(dat,temp)
  }
  #find the mean of the pollutant, make sure you remove NA values
  return(mean(dat[,pollutant],na.rm = TRUE))
  
}

# test some outputs
pollutantmean(directory = '~/Desktop/specdata', pollutant = 'sulfate', 1:10)

pollutantmean(directory = '~/Desktop/specdata', pollutant = 'nitrate', 70:72)

pollutantmean(directory = '~/Desktop/specdata', pollutant = 'nitrate', 23)
