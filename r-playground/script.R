
#install.packages("ggplot2")
library(ggplot2)

# Introduction to R
#browseURL("http://www.public.iastate.edu/~hofmann/stat579/")

## Taxi Cab Data

july <- read.csv(file = "C:/Users/rimcclos/Downloads/yellow_tripdata_2016-07.csv", header = TRUE, row.names = NULL, sep = ",", dec = ".", quote = "\"", comment.char = "")
#july <- read.csv(file = "C:/Users/rimcclos/Downloads/yellow_tripdata_2016-07.csv", header = TRUE, row.names = NULL, encoding = "UTF-8", sep = ",", dec = ".", quote = "\"", comment.char = "")

#july2016 url: https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-07.csv
#aug2016 url: https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-08.csv

july <- july[1:17]
july$VendorID <- as.factor(july$VendorID)
july$RatecodeID <- as.factor(july$RatecodeID)
july$PULocationID <- as.factor(july$PULocationID)
july$DOLocationID <- as.factor(july$DOLocationID)
july$payment_type <- as.factor(july$payment_type)


aug <- read.csv(file = "C:/Users/rimcclos/Downloads/yellow_tripdata_2016-08.csv", header = TRUE, row.names = NULL, sep = ",", dec = ".", quote = "\"", comment.char = "")
aug <- aug[1:17]

locations <- read.csv(file = "https://s3.amazonaws.com/nyc-tlc/misc/taxi+_zone_lookup.csv", header = TRUE)

#july$id <- 1:length(july$fare_amount)
#aug$id <- (length(july$fare_amount) + 1):(length(aug$fare_amount) + length(july$fare_amount))

#write.table(july, file = "C:/Users/rimcclos/Downloads/yellow-july_2016-ids.csv")
#write.table(aug, file = "C:/Users/rimcclos/Downloads/yellow-aug_2016-ids.csv")

qplot(data = july, y = total_amount, x = trip_distance, xlim = c(0, 300), ylim = c(0, 800))

qplot(july$total_amount, geom = "boxplot")
