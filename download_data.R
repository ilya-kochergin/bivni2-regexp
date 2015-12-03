# download data
##  

## Ветеренарные клиники  москвы 

download.file(url="http://data.mos.ru/opendata/export/1193/csv",destfile = "veterenary.csv.zip")
unzip(zipfile = "veterenary.csv.zip")
file.rename("Ветеринарные учреждения.csv","veterinary.csv")
## Убийства в домах Балтимора 
## Применяется в нескольких тьюториалах 
## например http://www.datadrivenjournalism.ru/2013/11/r_walkthrough_1/

