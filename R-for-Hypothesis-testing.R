# Load required packages
library(dplyr)     # Data manipulation
library(stats)     # Statistical functions
library(ggplot2)   # Data visualization
library(gmodels)   # Cross-tabulation
library(car)       # Linear regression
library(lmtest)    # Diagnostic tests for linear regression

# Step 1: Import data
data <- read.csv("path/to/your/data.csv")

# Step 2: Explore and summarize data
head(data)            # View the first few rows
summary(data)         # Summary statistics
str(data)             # Structure of the data
dim(data)             # Dimensions of the data

# Step 3: Perform statistical hypothesis testing
# Example 1: One-sample t-test
t.test(data$column1, mu = 0)

# Example 2: Two-sample t-test
t.test(data$column1, data$column2)

# Example 3: Chi-square test
chisq.test(data$column1, data$column2)

# Example 4: Analysis of Variance (ANOVA)
fit <- aov(column1 ~ column2, data = data)
summary(fit)

# Step 4: Data visualization
ggplot(data, aes(x = column1, y = column2)) +
  geom_point() +
  labs(x = "Column 1", y = "Column 2") +
  theme_minimal()

# Step 5: Cross-tabulation
cross_table <- CrossTable(data$column1, data$column2)

# Step 6: Linear regression
fit <- lm(column1 ~ column2, data = data)
summary(fit)

# Step 7: Diagnostic tests for linear regression
lmtest::bptest(fit)    # Breusch-Pagan test for heteroscedasticity
lmtest::dwtest(fit)    # Durbin-Watson test for autocorrelation

# Step 8: Export data
write.csv(data, "path/to/save/data.csv")
