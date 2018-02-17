'name:01-download-data-for-year'
getwd()
yy <- 2016
projdir <- sprintf("~/ResearchData/AWAP_GRIDS/AWAP_GRIDS_%s", yy)

setwd(projdir)

outdir <- sprintf("AWAP_GRIDS_%s", yy)
print(outdir)
#install.packages("devtools")
#library(devtools)
##install_github("swish-climate-impact-assessment/awaptools", ref = "develop")
require(awaptools)
library(raster)

source("code/01-download-data-for-year.R")
source("code/02-decompress-year.R")


## monthly
source("code/01-download-data-for-year-monthly.R")
source("code/02-decompress-year-monthly.R")
