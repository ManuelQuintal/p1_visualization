# - [ ] Recreate the two graphics in this repo using `gapminder` dataset from `library(gapminder)` (get them to match as closely as you can).
#     - [ ] Use `library(tidyverse)` to load ggplot2 and dplyr and the `theme_bw()` to duplicate the first plot.
#     - [ ] Use `scale_y_continuous(trans = "sqrt")` to get the correct scale on the y-axis.
#     - [ ] Build weighted average data set using `weighted.mean()` and GDP with `summarise()` and `group_by()` that will be the black continent average line on the second plot.
#     - [ ] Use `theme_bw()` to duplicate the second plot. You will need to use the new data to make the black lines and dots showing the continent average.
#     - [ ] Use `ggsave()` and save each plot as a .png with a width of 15 inches.

library(gapminder)
install.packages("ggthemes")
install.packages("gapminder")
library(ggthemes)

head(gapminder)
httpgd::hgd()
httpgd::hgd_browse()
plot1 <- gapminder::gapminder %>%
    filter(country != "Kuwait")


#1st plot
plot1 %>%
    ggplot(aes(x=lifeExp, y=gdpPercap, color= continent, size = pop / 100000))+
    geom_point() +
    facet_wrap(~year, nrow = 1) +
    facet_grid(~year) +
    labs(size = "Population (100k)", color = "continent", x= "Life Expectancy", y= "GDP per capita", ) +
    scale_y_continuous(trans = "sqrt") +
    theme_bw()

ggsave(file= "i1_Quintal_R.png", width = 15)

#2nd plot
plot2 <- gapminder::gapminder %>%
    filter(country != "Kuwait")
(plot2_cont <-plot2 %>%
    group_by(year, continent) %>%
    summarise(
        gdpPercap = weighted.mean(gdpPercap, pop),
        pop = sum(pop) / 100000
    ) %>%
    ungroup() %>%
    arrange(continent, year))

plot2 %>% 
    ggplot(aes(x=year, y=gdpPercap, color = continent)) +
    geom_point(aes(size = sum(pop)/100000)) +
    geom_line(aes(group = country)) + 
    geom_point(data = plot2_cont ,aes(size = pop / 100000), color = "black") +
    geom_line(data = plot2_cont, color= "black") +
    facet_grid(. ~ continent) +
    labs(size = "Population (100k)", color = "continent", x= "Year", y= "GDP per capita", ) +
    theme_bw()


