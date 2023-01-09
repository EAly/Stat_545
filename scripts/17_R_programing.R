# R vectors and indexing ----
# indexing in R starts from 1
x <- 3 * 4
is.vector(x)
length(x)
x[2] <- 100
x[5] <- 3
print(x)
x <- 1:4
print(x)
# utilize vectorization to do operations
y <- x^2
set.seed(1999)
rnorm(5, mean = 10^(1:5))
round(rnorm(5, sd= 10^(0:4)), 2)

y <- 1:3
z <- 3:7
y + z

# multiple objects can be combined to form a vector
yo <- c('hello', 'world')
nums <- c(1:3, 100, 150)

# lists ----
# unlike vectors, lists can hold elements of different types
a <- list('cabbage', pi, TRUE, 4.3)
str(a)
mode(a)
class(a)
# naming elements in a list
names(a) <- c('veg', 'dessert', 'myAim', 'number')
a
# or create a list with names from the begining similar to a dictionary
b <- list(veg= 'carrot', dessert= pi, myAim= TRUE, number=1.1)
b

# to get an element from a list as a list of an element(s) use []
b[1:2]
class(b[1:2])

# to get an element from a list as an element use [[]]
b[[2]]
class(b[[2]])

# you can use $ to get elements by name
b$myAim


# creating data frames -----
n <- 8
set.seed(1)
jDat <- data.frame(w= round(rnorm(n), 2), 
                   x = 1:n,
                   y = I(LETTERS[1:n]), # I tells R to do something literally, here don't coerce letters to factors
                   z = runif(n) > 0.3,
                   v = rep(LETTERS[9:12], each = 2))
