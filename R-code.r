# Load required packages
library(dplyr)      # Data manipulation
library(ggplot2)    # Data visualization
library(tidyr)      # Data tidying
library(lubridate)  # Date-time manipulation
library(plyr)       # Data aggregation
library(gmodels)    # Cross-tabulation

# Step 1: Import data
data <- read.csv("path/to/your/data.csv")

# Step 2: Explore and summarize data
head(data)            # View the first few rows
summary(data)         # Summary statistics
str(data)             # Structure of the data
dim(data)             # Dimensions of the data

# Step 3: Data cleaning and transformation
data_cleaned <- data %>%
  select(column1, column2, column3) %>%  # Select specific columns
  filter(column1 > 0)                    # Filter rows based on condition

data_transformed <- data_cleaned %>%
  mutate(new_column = column2 * 2)        # Create a new column

# Step 4: Data visualization
ggplot(data_cleaned, aes(x = column1, y = column2)) +
  geom_point() +
  labs(x = "Column 1", y = "Column 2") +
  theme_minimal()

# Step 5: Data aggregation
data_agg <- data %>%
  group_by(column1) %>%
  summarise(avg_column2 = mean(column2),
            sum_column3 = sum(column3))

# Step 6: Cross-tabulation
cross_table <- CrossTable(data$column1, data$column3)

# Step 7: Export data
write.csv(data_cleaned, "path/to/save/cleaned_data.csv")

