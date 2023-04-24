library(ggplot2)

df <- data.frame(days = c(3, 5, 2, 4, 1),
                 lab = c("Lab A", "Lab A", "Lab B", "Lab B", "Lab C"),
                 name = c("John", "Mary", "Tom", "Kate", "Jim"),
                 report_date = c("2022-01-01", "2022-01-02", "2022-01-03", "2022-01-04", "2022-01-05"))

ggplot(df, aes(x = days, y = lab, fill = name)) +
    geom_col() +
    geom_text(aes(label = name), hjust = 0.5, vjust = 0.5, size = 3) +
    scale_fill_manual(values = c("grey", "blue", "green", "orange", "purple")) +
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
ggsave("example1.jpg", width = 10, height = 5, units = "in", dpi = 300)