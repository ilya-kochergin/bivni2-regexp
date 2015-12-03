## 


length(homicides)
head(homicides)
pattern1 <- '\\d+'
cat(pattern1)
print(pattern1)

pattern2 <- "<dd>[Ff]ound on (.+?)</dd>"
date_pos0 <- regexpr(pattern = pattern2,homicides)
date_pos <- regexec(pattern = pattern2,homicides)
sapply(X = regmatches(homicides,date_pos), FUN = function(x) x[2])
sapply(X = regmatches(homicides,date_pos0), FUN = function(x) x[2])


test_pattern <- function(pat,text,...) {
  pos <- regexec(pat,text,useBytes = FALSE)
  sapply(X = regmatches(text,pos), FUN = function(x) x[2])
}
