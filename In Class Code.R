#Modlue 11 Functions and Flow
library(tidyverse)
library(sjmisc)
i <- TRUE

if (i == TRUE) {
  print("Yes")
} else {
  print("No")
}

i <-9
if_else(i <=10, "Yes", "No")

i <-c(9,20,15)
if_else(i <=10, "slay", "Nay")

#in class
#mathmateically defined distribution 
library(mosaic)
mu <-10 #for "mean parameter!#
sigma <-2 # for "sd" parameter!
plotDist("norm", mean=mu, sd=sigma, xlab="x", ylab="frequency")

s1 <-rnorm(n = 10, mean = 10, sd = 2)
mean(s1)
sd(s1)

#closer to 10 if larger sample size 
s1 <-rnorm (n= 100, mean = 10, sd = 2)
mean(s1)

#what happnes to SD if we change sample size 

s2 <- rnorm(n = 1000, mean = 10, sd = 2)
mean(s2)
sd(s2)

# Making a histogram
histogram(s2)
reps <- 500
samp_dist_mean <-
  do(reps) * mean(rnorm(n=10, mean = 10, sd = 2))
str(samp_dist_mean)
histogram(samp_dist_mean$mean)

samp_dist_median <-
  do(reps) * median(rnorm(n = 10, mean = 10, sd = 2))
reps <- 500
samp_dist_mean <-
  do(reps) * mean(rnorm(n=10, mean = 10, sd = 2))
str(samp_dist_mean)
se_mean <- sd(samp_dist_mean$mean)
histogram <-sd(se_mean)
