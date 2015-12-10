# download data
##  

## Ветеренарные клиники  москвы 
download.file(url="http://data.mos.ru/opendata/export/1193/csv",destfile = "veterinary.csv.zip")
unzip(zipfile = "veterinary.csv.zip")
file.rename("Ветеринарные учреждения.csv","veterinary.csv")

veterinary <- read.csv(file = "veterinary.csv",header = TRUE,sep=";",as.is = TRUE)
## Убийства в домах Балтимора 
## Применяется в нескольких тьюториалах 
## например http://www.datadrivenjournalism.ru/2013/11/r_walkthrough_1/
hmurl <-  "https://spark-public.s3.amazonaws.com/compdata/data/Baltimore_homicides.zip"
zipfile <- "Baltimore_homicides.zip"
download.file(hmurl,destfile = zipfile)
unzip(zipfile = zipfile)  
homicides <-  readLines("homicides.txt")
length(homicides)
head(homicides)

library(jsonlite)
library(dplyr)
library(tidyr)
