
'name:02-decompress-year'
setwd(projdir)
dir.create(paste(outdir, "data_derived", sep = "/"), recursive = T)
setwd(paste(outdir, "data_provided", sep = "/"))

st <- Sys.time()
for(year in yy){
## year <- yy
    print(year)
#  setwd("../data_daily_derived_1961_1990")  
#  year = 1992
  filelist <- dir(pattern = "grid$")
  filelist <- filelist[grep(sprintf("_%s", year), filelist)]
  filelist

# for(fl in filelist[-1]){
# file.rename(fl, file.path("../data_daily_derived_1991_2015", fl))
# }  
  
compress_gtifs(indir = getwd(), subDir = "../data_derived", filelist = filelist)
ed <- Sys.time()
print(ed - st)
}
