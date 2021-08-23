# Data science and visualization

> If 80% of data science work is data wrangling, 80% of your impact is through visualization. 

## Background

[Hans Rosling](http://www.gapminder.org/news/sad-to-announce-hans-rosling-passed-away-this-morning/) is one of the most popular data scientists on the web. [His original TED talk](https://www.ted.com/talks/hans_rosling_shows_the_best_stats_you_ve_ever_seen) was viral among my friends when it came out. We are going to create some graphics using his formatted data as our weekly case study. Note that we need to remove Kuwait from the data ([discussion on this](https://github.com/jennybc/gapminder/issues/9))

## Tasks

### Visualization review

- [ ] Complete a review of 2-3 different data visualizations used to answer specific questions. Some fun websites are [pudding.cool](https://pudding.cool/), wonkblog, [fivethiryeight](https://fivethirtyeight.com/), and [priceonomics](https://priceonomics.com/) (but you can use any website, blog, or article with a good visualization).

### Slack, VScode, Rstudio, Git, and Github

- [ ] Make sure you are in our Slack workspace.
- [ ] Finish setting up VScode for programming in R and Python.
- [ ] Finish setting up Rstudio.
- [ ] Finish installing Git.
- [ ] Finish creating your Github account and connecting to our organization.

### R

- [ ] Recreate the two graphics in this repo using `gapminder` dataset from `library(gapminder)` (get them to match as closely as you can).
    - [ ] Use `library(tidyverse)` to load ggplot2 and dplyr and the `theme_bw()` to duplicate the first plot.
    - [ ] Use `scale_y_continuous(trans = "sqrt")` to get the correct scale on the y-axis.
    - [ ] Build weighted average data set using `weighted.mean()` and GDP with `summarise()` and `group_by()` that will be the black continent average line on the second plot.
    - [ ] Use `theme_bw()` to duplicate the second plot. You will need to use the new data to make the black lines and dots showing the continent average.
    - [ ] Use `ggsave()` and save each plot as a .png with a width of 15 inches.

### Python

- [ ] Recreate the two graphics in this repo using the `gapminder` dataset from `library(gapminder)` (get them to match as closely as you can).
    - [ ] Export the data from R and import it into your Python environment. 
    - [ ] Use [plotnine](https://plotnine.readthedocs.io/en/stable/) or [Altair](https://altair-viz.github.io/index.html) to mimic the two graphics as close as possible.
    - [ ] Build a weighted average data set using GDP, the black continent average line on the second plot.


## Readings

### Visualization (being)

- [John Rauser on visualization](https://youtu.be/fSgEeI2Xpdc)
- [Effectively Communicating Numbers](http://perceptualedge.com/articles/Whitepapers/Communicating_Numbers.pdf)

### Technology

- [Slack quick start guide](https://slack.com/help/articles/360059928654-How-to-use-Slack--your-quick-start-guide)
- [VScode](https://code.visualstudio.com/) and [interactive Python in VScode](https://code.visualstudio.com/docs/python/jupyter-support-py)
- [Git](https://git-scm.com/), [Python](https://www.python.org/downloads/), [R](https://cloud.r-project.org/) installation.
- [Rstudio](https://www.rstudio.com/products/rstudio/download/#download) and [Using Git within Rstudio](https://cfss.uchicago.edu/setup/git-with-rstudio/)
- [Github](https://github.com/join) (_Please carefully think about your Github username. It is for business use._)

### R

- [R4DS: Chapter 3 Data visualization](https://r4ds.had.co.nz/data-visualisation.html)
- [R4DS: Chapter 28 Graphics for communication](https://r4ds.had.co.nz/graphics-for-communication.html)

### Python

- [Py4DS: Chapter 3 Data visualization](https://byuidatascience.github.io/python4ds/data-visualisation.html)
- [Py4DS: Chapter 28 Graphics for communication](https://byuidatascience.github.io/python4ds/graphics-for-communication.html)
