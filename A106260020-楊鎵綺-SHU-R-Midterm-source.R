#exl1
study <- function(x, y, t){
  u <- sqrt(x)*sqrt(y)
  tui <- 400*x + 600*y
  fit <- ifelse(tui <= t, "*", "")
  s <- data.frame(x, y, tui, u, fit)
  names(s) <- c("Eng.hr", "Comp.hr", "Tuition", "U", "Fit")
  print(s)
}
eng <- rep(c(13:17), 5)
comp <- rep(8:12, each = 5)
study(eng, comp, 12000)

#exl2(a)
score109 <- read_excel("data/Score-109.xlsx", sheet = "score", na = "NA" ,skip = 1)
head(score109)
tail(score109)

#exl2(b)
score109[is.na(score109)] <- 0
score109[(score109[,2] <= 60) & (score109[,3] <= 60),]

#exl2(c)
my.cor <- function(x, y){
  x1 <- rank(x)
  y1 <- rank(y)
  xm <- mean(x)
  ym <- mean(y)
  a <- sum((x1-xm) * (y1-ym))
  b <- sqrt(sum((x1-xm)^2)) * sqrt(sum((y1-ym)^2))
  ans <- a/b
  cat(ans)
}
x <- score109$Calculus
y <- score109$English
my.cor(x, y)

#exl2(d)
cor(x, y)

#exl3(a)



