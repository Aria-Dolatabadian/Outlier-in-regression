# Load necessary library
library(MASS)

# Import the data from the CSV file
data <- read.csv("data_output.csv")

# Perform linear regression
fit <- lm(y ~ x, data = data)

# Perform robust linear regression
fit2 <- rlm(y ~ x, data = data)

# Plot the data
plot(data$x, data$y, lwd = 3, xlim = c(0, 25), ylim = c(0, 85), cex = 3, xlab = "x", ylab = "y")
abline(fit, lwd = 4, col = "green3")
abline(fit2, lwd = 4, col = "blue")

# Add a legend
legend(0, 85, legend = c("Linear regression (Ordinary least squares)", 
                         "Robust linear regression (Huber)"),
       col = c("green3", "blue"), lty = 1, cex = 1.5, lwd = 4)
