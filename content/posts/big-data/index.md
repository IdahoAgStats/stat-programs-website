---
title: "So, you think you have big data"
authors:
- jpiaskowski
categories:
- big data
- R
- parallel computing
date: "2025-01-10T00:00:00Z"
draft: false
image:
  focal_point: ""
  placement: 2
  preview_only: false
subtitle: 
summary: "Tips and Tricks for Handling Large Data Sets on a Home Computer"
---

I hear this *alot* from folks: they have data “so big” that they cannot use their desktop computer or even R for that matter. And perhaps they do have a large data set, which is a wonderful thing that will give them extensive analytical power. But computing power has grown quite a bit as well, as have the tools for working with large data sets (in this [video](https://youtu.be/GELhdezYmP0?si=eWD_-SZ-NsP_T5F4), the speaker calls big data "dead"). We can often accomplish quite a bit using a standard desktop computer. If your computer can run Slack (a notorious memory hog), it can also probably analyze your large data set. 

The University of Idaho does have a [high powered computing resources](https://researchcomputing.uidaho.edu/high-performance-computing/). These are powerful and useful, but there is a level of overhead to using that it is not always worth the effort. It takes time to learn, you have a script ready to go and then must submit the job through a [slurm](https://arcca.github.io/slurm_advanced_topics/05-requesting-resources/index.html) request, a cumbersome process that also requires you have a log in (that you must apply for) to authenticate into the system. All doable things, but it takes time - precious, valuable time we have in limited supply. And you still have your script ready and error-free, something you should do on a local system (i.e. your PC) anyways given the iterative nature of troubleshooting a new programming script. 
### Tips and Tricks for Big Data

I have repeatedly pushed the limits of what my desktop installation of R can do, so I have a few ideas for how to make the most of your desktop computing system. 

1. Use a data format that is efficient. CSV is simpler and more compact (for hard drive storage) than XLS or XLSX. Text files (.txt) are very compact! Also, be aware that just because something is slow to open in Excel does not mean it will be slow to import into R.

2. Use packages that work well with larger data sets. The function `read_csv()` from [readr](https://readr.tidyverse.org/) is faster than `read.csv()`. `fread()` from [data.table](https://rdatatable.gitlab.io/data.table/) is honestly amazing at how fast it can read a file into R (and its complement `fwrite()` can likewise write an object to file with incredible alacrity). 

3. Consider saving data as R objects (e.g. .RData). These are high compressed formats that can be read back into R quickly and preserve all the formatting changes you may have made (e.g. if you have converted any variables to factors).This is a great timesaver if you have a data set that is the result of extensive pre-processing. Once the data set is processed, save it as an .RData object you can later load for downstream analysis.

4. If you have really enormous data sets, consider converting it to a [parquet, arrow or duckdb](https://r4ds.hadley.nz/arrow) file. This falls into the “[bigger than memory workflows](https://arrow-user2022.netlify.app/)” toolbox. When R imports a file, it creates an (R-specific) object for the file contents that is held in your computer’s memory (RAM). A general rule of thumb is that you can use up to one-third of your computer’s physical memory on R processes and after that, your system will slow to a crawl. I have successfully used the [arrow](https://arrow.apache.org/docs/r/) package to wrangle a data set 10 million rows long on my desktop computer of middling power. The [video](https://youtu.be/GELhdezYmP0?si=eWD_-SZ-NsP_T5F4) referenced above also provides a general introduction to these tools and their advantages

5. Get comfortable using R on the command line (that is, the terminal). You can directly call R scripts from a terminal to run a series of R commands including loading the data, analyzing it, and outputting the results to file. This can be faster than manually running each line of a code in an interactive R session. This is how you can convert things to parquet files and other tasks without the overhead of running a GUI like RStudio. 

6. For building scripts, use a reduced version of your target data set. This is helpful for troubleshooting code. Most often, a reduced data set is sufficient for developing and testing code. When it comes time to analyze the full data set, you can call your finalized script from the terminal.

7. If you’re running an iterative process that has outputs you want to save from each iteration, you can write those results to file after each iteration rather than building one huge object that is written to file once the entire process is done. The standard function `write.table()` has an option to append results to the end of an existing table. This has helped me quite a few times! It has the added advantage of providing partial outputs even if your R process is interrupted and terminates early due to coding errors, power outages, etc. 

8. Take advantage of fast parallel procedures: the apply family: `lapply()`, `apply()`, `mclapply()`, and so on;  [purrr](https://purrr.tidyverse.org/) functions; and functions from the [futures](https://future.futureverse.org/) package. I happen to lovelovelove apply functions, but many folks find **purrr** functions to be incredibly handy (and they do handle post processing of the iterative outputs much better than apply). 

9. Consider using multiple computer cores. Reading up on the [parallel package](https://stat.ethz.ch/R-manual/R-devel/library/parallel/doc/parallel.pdf) can help with how to optimize your computer’s cores when using R.

Also, check out the [CRAN task view on high performance computing](	https://CRAN.R-project.org/view=HighPerformanceComputing) for a comprehensive list of packages for maximizing computer performance when using R. There are a few dozen packages described there that can assist in a wide array of high performance computing tasks from paralellizing your operations to modelling applications specifically developed for very large data sets. 

There is more that can be done to increase the speed of R (e.g. code profiling), but the tips above are a great starting point and will probably resolve many of your problems. Items 1-3 will take you far, item 4 can be a lifesaver for large data sets and the rest are largely application specific (i.e. they help under certain circumstances). 
