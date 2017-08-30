# Taxi data cleanse / setup


months <- c( 'jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'dec' )

getMonth <- function(monthName) {
    monthName <- substring(monthName, 1, 3)
    mIndex <- which(months == monthName)
}



cleanData <- function(month) {
    colnames(month) <- apply(month[1,], 1, as.character)
    month <- month[-1,]
    month <- month[1:17]
    month$VendorID <- as.factor(month$VendorID)
    month$RatecodeID <- as.factor(month$RatecodeID)
    month$PULocationID <- as.factor(month$PULocationID)
    month$DOLocationID <- as.factor(month$DOLocationID)
    month$payment_type <- as.factor(month$payment_type)
    month$tpep_pickup_datetime <- as.POSIXct(month$tpep_pickup_datetime)
    month$tpep_dropoff_datetime <- as.POSIXct(month$tpep_dropoff_datetime)
}
