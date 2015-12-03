## 


length(homicides)
head(homicides)
pattern1 <- '\\d+'
cat(pattern1)
print(pattern1)

pattern2 <- "<dd>[Ff]ound on (.+?)</dd>"
date_pos <- regexec(pattern = pattern2,homicides)
sapply(X = regmatches(homicides,date_pos), FUN = function(x) x[2])


test_pattern <- function(pat,text,...) {
  pos <- gregexpr(pat,text)
  sapply(X = regmatches(text,oos), FUN = function(x) x[2])
}