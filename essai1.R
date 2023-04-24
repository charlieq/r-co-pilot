# Description: This script is used to test the ggplot2 package
library(ggplot2)

# Load the data
raw_data <- read.csv("data/timeTracking.csv", header = TRUE, sep = ",")

# create a stacked bar chart days per person per month
ggplot(raw_data, aes(x = month, y = days, fill = name)) +
    geom_col() +
    geom_text(aes(label = name), hjust = 0.5, vjust = 0.5, size = 3) +
    theme_minimal() +
    theme(axis.text.y = element_text(size = 20, color = "black"),
            axis.title.y = element_blank(),
            axis.title.x = element_blank(),
            axis.text.x = element_blank(),
            axis.ticks = element_blank(),
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(),
            panel.background = element_blank(),
            panel.border = element_blank(),
            legend.position = "none")

# save jpg
ggsave("essai1.jpg", width = 10, height = 5, units = "in", dpi = 300)