
# Roll a dice
roll <- function(bones=1:6) {
    dice <- sample(bones, size = 2, replace = TRUE)
    sum(dice)
  }

roll()

# Installing packages
install.packages("ggplot2")

#Scatterplots are useful for visualizing the relationship between two variables.
qplot(1:5,1:5)

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
y <- -x^3
qplot(x,y)

# A histogram visualizes the distribution of a single variable; 
# it displays how many data points appear at each value of x.
x <- c(1, 2, 2, 2, 3, 3)
qplot(x, binwidth = 0.2)

x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(x2, binwidth = 0.3)

x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x3, binwidth = 1)

## Rolling the dice several times
rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 0.2)

## Checking the help
?sample


# Roll a dice with a different ponderations
roll_6 <- function(bones=1:6) {
  dice <- sample(bones, size = 2, replace = TRUE, 
                 prob = c(0.5/8, 0.5/8, 0.5/8, 0.5/8, 1/8, 5/8))
  sum(dice)
}

rolls_6 <- replicate(8,roll_6())
qplot(rolls_6, binwidth = 0.5)

## I want to look up everything that is related with the word log, 
## because i dont rememeber the name of an specific function
??log


#### OBJECTS
die 