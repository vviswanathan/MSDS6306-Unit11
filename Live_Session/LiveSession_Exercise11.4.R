install.packages("fpp")
library(fpp)

# Passengers from Melbourne to Sydney
data(melsyd)
class(melsyd)
summary(melsyd)

plot(melsyd[,"Economy.Class"], main="Economy class passengers: Melbourne-Sydney",
     xlab = "Year", ylab = "Thousands")
plot(melsyd)

## Ages at death of Kings of England

kings <- scan("https://robjhyndman.com/tsdldata/misc/kings.dat",skip = 3)
KingsTS <- ts(kings)
plot(KingsTS)

## Using start arameter to specify frequency and date of start

births <- scan("https://robjhyndman.com/tsdldata/data/nybirths.dat")
births.ts <- ts(births, frequency = 12, start = c(1946,1))
plot(births.ts)

## Sales from a souvenir shop
souvenir <- scan("https://robjhyndman.com/tsdldata/data/fancy.dat")
souvenir.ts <- ts(souvenir)
plot(souvenir.ts)

data(ustreas)
plot(ustreas, xlab ="Day", ylab="US Treasury bill contracts")
