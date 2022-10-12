#script to create truncated normal distributions for reliability task
library(truncnorm)
library(psych)

set.seed(333)
C1A <- as.integer(rtruncnorm(200, a=0, b=100, mean = 68, sd = 6))
C1B <- as.integer(rtruncnorm(200, a=0, b=100, mean = 68, sd = 12))
C2A <- as.integer(rtruncnorm(200, a=0, b=100, mean = 68, sd = 18))

#hist
hist(C1A)
hist(C1B)
hist(C2A)

#descriptives
describe(C1A)
describe(C1B)
describe(C2A)

write.csv(C1A, "/Users/yrianderreumaux/Documents/GitHub/reliability/C1A_(M=67.30,SD=5.75)_2022.csv")
write.csv(C1B, "C1B_(M=68.06,SD=11.2).csv")
write.csv(C2A, "/Users/yrianderreumaux/Documents/GitHub/reliability/C2A_(M=67.05,SD=16.66)_2022.csv")
