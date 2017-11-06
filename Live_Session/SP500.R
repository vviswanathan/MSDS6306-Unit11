# Unit 11: Modeling Financial Data
# Uncomment and install packages if you don't have it
#install.packages("tseries")

# Description: Please fill out that this is for educational purposes and talk about what it's for!

library(tseries)

## S&P 500 (^GSPC)
###    SNP - SNP Real Time Price. Currency in USD

# TODO: Download the data of SP500 '^gspc'.
SNPdata <- get.hist.quote([Fill In],quote="Close")

# TODO: Calculate the log returns, which is the subtraction of log(lag(SNPdata)) and log(SNPdata)
SNPret <- [Fill In]

# TODO: Calculate volatility measure that is to multiply sd(SNPret),sqrt(250), 100
SNPvol <- [Fill In]


## Define getVol function for volatility
getVol <- function(d, logrets) {
	var = 0
	lam = 0
	varlist <- c()

	for (r in logrets) {
		lam = lam*(1 - 1/d) + 1
	  var = (1 - 1/lam)*var + (1/lam)*r^2
		varlist <- c(varlist, var)
	}

	sqrt(varlist)
}

# Calculate volatility over entire length of series for various three different decay factors: 10 30. 100

# TODO: call getVol function with the parameters: 10,SNPret
volest <- [Fill In]

# TODO: call getVol function with the parameters: 30,SNPret
volest2 <- [Fill In]

# TODO: call getVol function with the parameters: 100,SNPret
volest3 <- [Fill In]

# Plot the results, overlaying the volatility curves on the data, just as was done in the S&P example.
plot(volest,type="l")

# TODO: Add connected line segments for volest2 with the parameters: type="l",col="red"
[Fill In]

# TODO: Add connected line segments for volest3 with the parameters: type="l",col="blue"
[Fill In]
