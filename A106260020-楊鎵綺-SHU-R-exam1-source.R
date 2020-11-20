#exl1(a)
score.a <- read.csv("data/Calculus-score-A.csv", na = "NA", fileEncoding = 'BIG5', skip=2)
score.b <- read_excel("data/Calculus-score-B.xls", na = "NA", skip=2)
head(score.a)
head(score.b)
tail(score.a)
tail(score.b)

#exl1(b)
names(score.a) <- c("座號", "學號", "姓名", "性別", "quiz(1)", "quiz(2)", "quiz(3)", "quiz(4)", "TA", "MidtermExam", "FinalExam" ,"Attendance")
names(score.b) <- c("座號", "學號", "姓名", "性別", "quiz(1)", "quiz(2)", "quiz(3)", "quiz(4)", "TA", "MidtermExam", "FinalExam" ,"Attendance")
score <- rbind(score.a, score.b)
score[38:43,]

#exl1(c)
scoretotal <- c(as.matrix(score[, 5:11])%*% as.vector(c(0.07, 0.07, 0.08, 0.08, 0.15, 0.25, 0.3))+score[,12])
scoretotal

#exl1(d)
score[55 <= scoretotal & scoretotal > 60,]

#exl1(e)
scoretotal.a <- c(as.matrix(score.a[, 5:11])%*% as.vector(c(0.07, 0.07, 0.08, 0.08, 0.15, 0.25, 0.3))+score.a[,12])

#exl2(a)
set.seed(123456)
Letters.code <- sample(LETTERS[1:5], 20, replace=T)
