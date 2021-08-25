#Use filter(), arrange(), select(), mutate(), group_by(), and summarise(). With library(tidyverse) tackle the following challenges.

#Arrange the iris data by Sepal.Length and display the first six rows.
#Select the Species and Petal.Width columns and put them into a new data set called testdat.
#Create a new table that has the mean for each variable by Species.
#Read about the ?summarise_all() function and get a new table with the means and standard deviations for each Species.
#Look at the examples in the summarise_all() help file and see if you can find other use cases for the summarise_ or mutate_ functions.

library(tidyverse)

iris %>%
    arrange(Sepal.Length) %>%
    slice(1:6)

#steps 1 -2
(testdat <-iris %>%
    arrange(desc(Sepal.Length)) %>%
    slice(1:6) %>%
    select(Species, Petal.Width))

# Step 3
new_table <- iris %>%
    group_by(Species) 
#summarise on grouped object
new_table %>% 
    summarise(mean_sl = mean(Sepal.Length),
        mean_sw = mean(Sepal.Width))
#new piece of info added into columns
new_table %>%
    mutate(mean_sl = mean(Sepal.Length),
        mean_sw = mean(Sepal.Width))


