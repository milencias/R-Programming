corr <- function(directory, threshold = 0) {
#create the list of files
  allfiles <- list.files(directory, full.names = TRUE)
#create an empty vector to store the correlation
  finalresult <- vector(mode = "numeric", length = 0)
     
     for(i in 1:332) 
     {
          # Reading the required files and storing them without NAs 
          fullfile <- na.omit(read.csv(allfiles[i]))
          if( nrow(fullfile) > threshold ) {
               
               #calculate the correlation and combine in the result empty vector we created earlier
               corrvector <- cor(fullfile$sulfate, fullfile$nitrate)
               finalresult <- append(finalresult,corrvector)
          }
     }
     #return the result
     finalresult
}

# test the output
cr <- corr(directory = '~/Desktop/specdata', 150)
head(cr)

summary(cr)
