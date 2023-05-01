print ("1. An analogue signal received at a detector, measured in microvolts, is normally distributed with mean of 200 and a variance of 256.")
print("a.What is the probability that the signal will exceed 224?")

#ANSWER IN LETTER B 
print("b.What is the probability that it will be between 186 and 224?")
b <- pnorm (224, 200, 16) - pnorm (186, 200, 16)
b

#ANSWER IN LETTER C
print("c.What is the micro voltage below which 25% of the signals will be?")
mvbelow <- qnorm(0.75, 200, 256)
mvbelow

curve(dnorm(x, 200, 256), 200, 800)
x <- qnorm(0.75, 200, 256)
x
lines(x, dnorm(x, 200, 256), type = "h")

#ANSWER IN LETTER D
print("d.What is the probability that the signal will be less than 240, given that it is larger than 210?")
Prob_d <- (pnorm(240, 220, 16) - pnorm(210, 200, 16)) / (1-pnorm(210, 200, 16))
Prob_d * 100

#ANSWER IN LETTER E
print("e.Estimate the interquartile range.")
InterR <- qnorm(0.75, 220, 16) - qnorm(0.25, 220, 16)
InterR

#ANWER IN LETTER F
print("f.What is the probability that the signal will be less than 220, given that it is larger than 210?")
Prob_f <- (pnorm(220, 220, 16) - pnorm(210, 200, 16)) / (1-pnorm(210, 200, 16))
Prob_f * 100

#ANSWER IN LETTER G
print("g.If we know that a received signal is greater than 200, what is the probability that is in fact greater than 220?")
1 - pnorm(200, 220, 200) #To get P(X>200)
1 - pnorm(220, 220, 200)#To get P(X>220)

Prob_g <- (1- pnorm(200, 220, 200))/(1-pnorm(220, 220, 200))
round(Prob_g, 4)

print ("2. A manufacturer of a particular type of computer system is interested in improving its customer support services. As a first step, its marketing department has been charged with the responsibility of summarizing the extent of customer problems in terms of system failures. Over a period of six months, customers were surveyed and the amount of downtime (in minutes) due to system failures they had experienced during the previous month was collected. The average downtime was found to be 25 minutes and a variance of 144. If it can be assumed that downtime is normally distributed:")
print("a. obtain bounds which will include 95% of the downtime of all the customers")
dwntm <- qnorm(0.05, 25, 144)
dwntm

curve(dnorm(x, 25, 12), 0, 50)
x <- qnorm(0.05, 25, 12)
x
lines(x, dnorm(x, 25, 12), type = "h")

print("b. obtain the bound above which 10% of the downtime is included..")
dwntm <- qnorm(0.1, 25, 144)
dwntm

curve(dnorm(x, 25, 12), 0, 50)
x <- qnorm(0.1, 25, 12)
x
lines(x, dnorm(x, 25, 12), type = "h")
