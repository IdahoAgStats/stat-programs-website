library(ggplot2)

n = 1000
x = 1:n

dat <- data.frame(x1 = rep(x, 6), 
                  y = c(rnorm(n, 1.5) + 2, rnorm(n, 1.5) + 2.5, rnorm(n, 1.5) + 3, 
                        rnorm(n, 1.5) + 3.5, rnorm(n, 1.5) + 4.1, rnorm(n, 2) + 4.5),
                  line = rep(letters[1:6], each = n)) 

loess_dat <- dat |> 
  dplyr::group_by(line) |> 
  dplyr::group_map(~ predict(loess(y ~ x1, span=0.3, data = .x))) |> 
  unlist()

dat$y_loess <- loess_dat


ggplot(dat, aes(x = x1, y = y_loess, group = line)) + 
  geom_ribbon(aes(ymin = 3, ymax = y_loess), fill = "#16a085", alpha = 0.20) +
  geom_line(color = "#fef9e7") +
  theme_void()

ggsave("assets/media/home_bg.png", width = 3000, height = 1800, unit = "px")
