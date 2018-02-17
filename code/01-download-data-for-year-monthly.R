dir()
dir.create("data_provided_monthly")
setwd("data_provided_monthly")
# get weather data, beware that each grid is a couple of megabytes
vars <- c("maxave","minave","totals")#,"vprph09","vprph15") #,"solarave") 
# solar only available after 1990
for(yy in 2016){
    ## yy <- 2016
    load_monthly(start = sprintf('%s-01-01', yy),end = sprintf('%s-12-1', yy))
}

setwd(projdir)
