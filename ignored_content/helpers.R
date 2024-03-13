
#https://bookdown.org/yihui/blogdown/a-quick-example.html

rmarkdown::render_site()

#install.packages("blogdown")

rmarkdown::render_site()

##to open website
blogdown::serve_site()

update.packages(ask = FALSE, checkBuilt = TRUE)

renv::status()
