
library(ggridges); library(readxl); library(lubridate); 
library(dplyr); library(ggplot2); library(tidyr)


mydata2 <- read_excel("assets/media/homespun/environmental_data.xlsx") |>  
  mutate(month = month(DateTime, label = TRUE), 
         year = as.character(year(DateTime)), 
         week = as.factor(week(DateTime)))


ggplot(mydata2, aes(x = nmpi_mn, y = week, fill = week, color = week)) +
  geom_density_ridges(scale = 7, rel_min_height = .001,
                      color = "transparent", show_guide = FALSE) + 
  geom_density_ridges(scale = 7, rel_min_height = 0.001, size = .3,
                      fill = "transparent", show_guide = FALSE) + 
  scale_colour_viridis_d(option = "A", direction = 1) + 
  scale_fill_viridis_d(option = "A", direction = 1, alpha = 0.8) +
  xlim(c(-10,75)) +
  theme_void() + 
  theme(panel.background = element_rect(fill = 'transparent', color = NA))
  

ggsave("assets/media/homespun/hero.png", width = 4, height = 6)
ggsave("content/home/hero.png", width = 4, height = 6)


#goes in content/home