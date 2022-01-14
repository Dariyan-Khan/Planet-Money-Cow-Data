#Exploring Planet Money Cow datasets

#Load in data

cow <- read.csv("Planet Money Cow Data.csv")

print(class(cow))

print(dim(cow))

#tabulate data and check for missing values

table(is.na(cow$guess)) #no empty values

summary(cow$guess)

boxplot(cow$guess)

hist(cow$guess,breaks=200,xlim=range(1,5000,200))

print(mean(cow$guess))

print(sd(cow$guess))

#The sample mean is 1287 and the standard deviation is 622.
#The graph is roughly symmetrical about the mean, with an approximate bell shape
#and guesses far from the mean being unnlikely. SO, I think that a normal
#distribution is suitable.

#number of standard errors from thhe actual weight of 1355:

st_error=sd(cow$guess)
mean_guess=mean(cow$guess)

num_standard_errors = abs(1355-mean_guess)/st_error

#the number of standard errors in 0.109


