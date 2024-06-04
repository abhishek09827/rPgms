library(ggplot2)	
	
data <- data.frame(x = rnorm(50), y = rnorm(50))	

ggplot(data, aes(x, y)) +	
  geom_point() +	
  labs(title = "Scatter Plot", x = "X-axis", y = "Y-axis")	
	

data <- data.frame(category = c("A", "B", "C"), value = c(10, 20, 15))	
	
ggplot(data, aes(x = category, y = value)) +	
  geom_bar(stat = "identity") +	
  labs(title = "Bar Plot", x = "Category", y = "Value")	
  library(ggplot2)	

data <- data.frame(x = 1:10, y = 2 * (1:10))	

ggplot(data, aes(x, y)) +	
  geom_line() +	
  labs(title = "Line Plot", x = "X-axis", y = "Y-axis")	

  library(ggplot2)	

data <- data.frame(values = rnorm(100))	

ggplot(data, aes(values)) +	
  geom_histogram(binwidth = 0.5, fill = "blue", color = "black") +	
  labs(title = "Histogram", x = "Values", y = "Frequency")	