library(tidyverse)
name <- heroes$name[1:15]
year <- as.character(c(1993, 1990, 1990, 1992, 1995, 1992, 1995, 1990, 1991, 
          1992, 2004, 2002, 2003, 2002, 2004))
tbl <- tibble(name, year)
tbl <- tbl %>% 
  add_column(dummy = "dummy")

tbl %>% 
  ggplot() +
  geom_point(aes(y = fct_shuffle(name), x = dummy, color = year), 
             shape = 15, size = 6) +
  scale_color_identity() +
  theme_minimal()

gss_cat <- gss_cat %>% 
  count(rincome)

levels(tbl$name)


reshuffled_income <- gss_cat$rincome %>% fct_shuffle()

levels(reshuffled_income)
hist(reshuffled_income)

fct_relevel(reshuffled_income, c("Lt $1000", "$1000 to 2999"), 
            after = 1) %>% 
  levels()

tbl <- tbl %>% 
  mutate(order = c(1:15))

levels(tbl$dummy)
fct_shuffle(tbl$order)

gss_cat$rincome %>% levels()

oreder_levels <- factor(tbl$order, c(1:15))

tbl

levels(oreder_levels)

oreder_levels
