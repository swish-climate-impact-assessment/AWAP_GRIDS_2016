
dir.create("data_provided")
setwd("data_provided")
# get weather data, beware that each grid is a couple of megabytes
vars <- c("maxave","minave","totals")#,"vprph09","vprph15") #,"solarave") 
# solar only available after 1990
for(yy in 2016){
    for(measure in vars){
        ##measure <- vars[1]
        get_awap_data(start = sprintf('%s-01-01', yy),end = sprintf('%s-12-31', yy), measure)
    }
}
setwd(projdir)
