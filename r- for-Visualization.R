# Load required packages
library(ggplot2)   # Data visualization
library(dplyr)     # Data manipulation

# Step 1: Import data
data <- read.csv("path/to/your/data.csv")

# Step 2: Explore and summarize data
head(data)            # View the first few rows
summary(data)         # Summary statistics
str(data)             # Structure of the data
dim(data)             # Dimensions of the data

# Step 3: Data visualization
# Example 1: Scatter plot
ggplot(data, aes(x = column1, y = column2)) +
  geom_point() +
  labs(x = "Column 1", y = "Column 2") +
  theme_minimal()

# Example 2: Bar plot
data_summary <- data %>%
  group_by(column1) %>%
  summarise(count = n())

ggplot(data_summary, aes(x = column1, y = count)) +
  geom_bar(stat = "identity") +
  labs(x = "Column 1", y = "Count") +
  theme_minimal()

# Example 3: Box plot
ggplot(data, aes(x = column1, y = column2)) +
  geom_boxplot() +
  labs(x = "Column 1", y = "Column 2") +
  theme_minimal()

# Example 4: Histogram
ggplot(data, aes(x = column1)) +
  geom_histogram(binwidth = 1) +
  labs(x = "Column 1", y = "Frequency") +
  theme_minimal()

# Example 5: Line plot
data_summary <- data %>%
  group_by(column1) %>%
  summarise(mean_column2 = mean(column2))

ggplot(data_summary, aes(x = column1, y = mean_column2)) +
  geom_line() +
  labs(x = "Column 1", y = "Mean of Column 2") +
  theme_minimal()

# Step 4: Export plots
ggsave("path/to/save/plot.png", width = 6, height = 4)

