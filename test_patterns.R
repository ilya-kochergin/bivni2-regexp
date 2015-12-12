## 


length(homicides)
head(homicides)
pattern1 <- '\\d+'
cat(pattern1)
print(pattern1)

pattern2 <- "<dd>[Ff]ound on (.+?)</dd>"
  
whole_pos <- regexpr(pattern2, homicides)

regmatches(homicides,m = whole_pos)[1:5]

pattern2 <- "<dd>[Ff]ound on (.+?)</dd>"
date_pos0 <- regexpr(pattern = pattern2,homicides)
date_pos <- regexec(pattern = pattern2,homicides)
date_text <- sapply(X = regmatches(homicides,date_pos), FUN = function(x) x[2])
sapply(X = regmatches(homicides,date_pos0), FUN = function(x) x[2])

date_text

as.Date(x = date_text, format="%B %d, %y")
test_pattern <- function(pat,text,...) {
  pos <- regexec(pat,text,useBytes = FALSE)
  sapply(X = regmatches(text,pos), FUN = function(x) x[2])
}


## sub/gsub() demo
sub(pattern = "\\d+",replacement = "<NO>",x = "10, Low palmes ave, Salt Lake City UT")
sub(pattern = "\\d+",replacement = "",x = "10, Low palmes ave, Salt Lake City UT")
sub(pattern = "(\\d+)",replacement = "<\\1>",x = "10, Low palmes ave, Salt Lake City UT")
# exchange 2 gruops
sub(pattern = "(\\d+,)(.+?,)",replacement = "\\2\\1",x = "10, Low palmes ave, Salt Lake City UT")


