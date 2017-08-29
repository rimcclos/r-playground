# Taxi data cleanse / setup


months <- c( 'jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'dec' )

#monthNum <- which( months == 'jul' )

cleanData <- function(month) {
    colnames(month) <- apply(month[1,], 1, as.character)
    month <- month[-1,]
    month <- month[1:17]
    month$VendorID <- as.factor(month$VendorID)
    month$RatecodeID <- as.factor(month$RatecodeID)
    month$PULocationID <- as.factor(month$PULocationID)
    month$DOLocationID <- as.factor(month$DOLocationID)
    month$payment_type <- as.factor(month$payment_type)

}
