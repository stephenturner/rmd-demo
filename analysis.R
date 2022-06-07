dat <- read.delim("data.txt")
dat

mean_a <- mean(dat$value[dat$group=="A"])
mean_a

mean_b <- mean(dat$value[dat$group=="B"])
mean_b

t.test(value~group, data=dat)

barplot(c(mean_a, mean_b), names=c("Group A", "Group B"))
boxplot(value~group, data=dat)

