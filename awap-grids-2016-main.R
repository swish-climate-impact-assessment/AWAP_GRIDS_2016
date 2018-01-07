
'name:01-download-data-for-year'
getwd()
yy <- 2016
projdir <- "~/ResearchData/AWAP_GRIDS/"
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