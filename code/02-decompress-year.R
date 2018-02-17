'name:02-decompress-year'
setwd(projdir)
dir.create("data_derived")
setwd("data_provided")

st <- Sys.time()
for(year in yy){
## year <- yy
    print(year)

  filelist <- dir(pattern = "grid$")
  filelist <- filelist[grep(sprintf("_%s", year), filelist)]
##  filelist

compress_gtifs(indir = getwd(), subDir = "../data_derived", filelist = filelist)
ed <- Sys.time()
print(ed - st)
}
setwd(projdir)
