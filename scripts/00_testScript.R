n <- 100
a <-  2
b <- 3
sig_sq <- 0.5
x <- runif(n)
y <- a + b * x + rnorm(n, sd= sqrt(sig_sq))
y
rm(y)
y <- a + b * x + rnorm(n, sd = sqrt(sig_sq))
(avg_x <- mean(x))
write(avg_x, 'output/avg_x.txt')
plot(x, y)
abline(a, b, col = 'blue')
dev.print(pdf, 'output/toy_line_plot.pdf')

