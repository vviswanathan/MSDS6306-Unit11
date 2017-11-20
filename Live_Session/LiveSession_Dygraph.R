library(dygraphs)
library(xts)

class(nhtemp)
nhtemp
dygraph(nhtemp)
?dygraph
dygraph(nhtemp) %>%
  dyAxis("axis")

?dyAxis
dygraph(nhtemp, main="Temperatures in New Hampshire in degrees F", xlab="Time", ylab="Temperature in F") %>%
  dySeries("V1", label="Temperature") %>%
  dyAxis("x", drawGrid=FALSE) %>%
  dyRangeSelector(height=100) %>%
  dyOptions(colors = "blue")
?dyShading
