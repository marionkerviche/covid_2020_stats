install.packages("tidyverse")
library(tidyverse)
install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)
library(lubridate)

covid_data <- read.csv("/Users/marionkerviche/Projects/covid_april/CovidData.csv")
head(covid_data)

#modify date type
covid_data$date <- as.Date(covid_data$date)

#prepare dataset to only include 2020 data and state 56
data2020 <- covid_data %>%
  filter(state == 56) %>%
  filter(year(date) == 2020)

class(covid_data$date)
unique(year(covid_data$date))

#average daily covid cases
#scatterplot

ggplot(data=subset(covid_data, !is.na(cases_positive_total))) + 
  geom_point(mapping=aes(x=date, y=cases_positive_total))

#min and max of positive case total column
min(covid_data$cases_positive_total)
max(covid_data$cases_positive_total)

#average monthly covid cases

#trend of hospitalization over time

# % of cases resulting in hospitalization

# % of cases resulting in death