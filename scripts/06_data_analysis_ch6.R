# Loading libraries ---------
library(tidyverse)
library(gapminder)

# subset the data -------
# user filter()
filter(gapminder, lifeExp < 29)
filter(gapminder, country == 'Rwanda', year > 1979)
filter(gapminder, country %in% c('Rwanda', 'Egypt'))

# use subset()
subset(gapminder, country == 'Egypt')

# use select to subset columns
select(gapminder, year, lifeExp)

# the pipe operator for nesting commands -----
# shortcut is CTRL+SHIFT+M
gapminder %>% head()
# you can use this instead of head(gapminder)
gapminder %>% head(3)
gapminder %>% select(year, lifeExp) %>% head(3)
gapminder %>% filter(country == 'Cambodia') %>% select(year, lifeExp)
