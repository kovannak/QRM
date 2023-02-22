#
# Week 1
#

# Get necessary tools for the course
my_packages <- c("usethis", "devtools", "learnr", "tinytex", "rmarkdown")
install.packages(my_packages, repos = "http://cran.rstudio.com")
remotes::install_github("kosukeimai/qss-package")
tinytex::install_tinytex()  # install TinyTeX

# R as a calculator
5 + 3
5 - 3
5 / 3
5 ^ 3
5 * (10 - 3)
sqrt(4)

# Objects
result <- 5 + 3
result
print(result)
result <- 5 - 3
result

Mario <- "instructor"
Mario
course <- "class and lab"
course

Result <- "5"
Result
result

# Classes
class(result)
Result
class(Result)
class(sqrt)

# Vectors
world.pop <- c(2525779, 3026003, 3691173, 4449049, 5320817, 6127700, 6916183)
world.pop

pop.first <- c(2525779, 3026003, 3691173)
pop.second <- c(4449049, 5320817, 6127700, 6916183)
pop.all <- c(pop.first, pop.second)
pop.all

# Indexing
world.pop[2]
world.pop[c(2, 4)] 
world.pop[c(4, 2)] 
world.pop[-3]

pop.million <- world.pop / 1000
pop.million

pop.rate <- world.pop / world.pop[1]
pop.rate

pop.increase <- world.pop[-1] - world.pop[-7]
percent.increase <- (pop.increase / world.pop[-7]) * 100
percent.increase
percent.increase[c(1, 2)] <- c(20, 22)
percent.increase

# Functions
length(world.pop)  
min(world.pop)     
max(world.pop)     
range(world.pop)   
mean(world.pop)    
sum(world.pop) / length(world.pop) 

year <- seq(from = 1950, to = 2010, by = 10)
year

seq(to = 2010, by = 10, from = 1950)

seq(from = 2010, to = 1950, by = -10)
2008:2012
2012:2008

names(world.pop) 
names(world.pop) <- year
names(world.pop)
world.pop

# Example of a function
my.summary <- function(x){ # function takes one input
  s.out <- sum(x)
  l.out <- length(x)
  m.out <- s.out / l.out
  out <- c(s.out, l.out, m.out) # define the output
  names(out) <- c("sum", "length", "mean") # add labels
  return(out) # end function by calling output
}
z <- 1:10
my.summary(z)
my.summary(world.pop)

# Working directory
# setwd()
getwd()

# Read files
UNpop <- read.csv("UNpop.csv") 
class(UNpop)

load("UNpop.RData") 

# Information about data
names(UNpop)
nrow(UNpop)
ncol(UNpop)
dim(UNpop)
summary(UNpop)

# Dataset positions
UNpop$world.pop

UNpop[, "world.pop"] # extract the column called "world.pop"
UNpop[c(1, 2, 3),]   # extract the first three rows (and all columns)
UNpop[1:3, "year"]   # extract the first three rows of the "year" column

## take elements 1, 3, 5, ... of the "world.pop" variable
UNpop$world.pop[seq(from = 1, to = nrow(UNpop), by = 2)]

world.pop <- c(UNpop$world.pop, NA)
world.pop
mean(world.pop)
mean(world.pop, na.rm = TRUE)

# Saving and loading
save.image("Week1.RData")

save(UNpop, file = "Week1.RData")
save(world.pop, year, file = "Week1.RData")

write.csv(UNpop, file = "UNpop.csv")

load("week1.RData")

# Packages
install.packages("foreign") # install package
library("foreign") # load package

read.dta("UNpop.dta")
read.spss("UNpop.sav")

write.dta(UNpop, file = "UNpop.dta")

# Swirl, tutorials and exercises
install.packages("swirl") # install the package
library(swirl) # load the package
install_course_github("kosukeimai", "qss-swirl") # install the course
library(swirl)
swirl()
