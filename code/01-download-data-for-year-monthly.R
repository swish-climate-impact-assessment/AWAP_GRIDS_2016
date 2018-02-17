dir()
dir.create("data_provided_monthly")
setwd("data_provided_monthly")
for(yy in 2016){
    ## yy <- 2016
    load_monthly(start = sprintf('%s-01-01', yy),end = sprintf('%s-12-1', yy))
}

setwd(projdir)
