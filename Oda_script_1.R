C:\Program Files\R\R-3.x.x\bin\Rscript.exe


library(dplyr)
library(nycflights13)

not_cancelled = flights %>%
  filter(!is.na(dep_delay), !is.na(arr_delay))

not_cancelled %>%
  group_by(year, month, day) %>%
  summarise(mean = mean(dep_delay))
