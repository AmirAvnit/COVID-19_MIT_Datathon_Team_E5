library(tidyverse)
rm(list = ls())
d1<-read.csv("data/us-counties.csv")
d2<-read.csv("data/health.csv")
d3<-read.csv("data/health_factors.csv")
d4<-read.csv("data/health_factors_behab.csv")
d5<-read.csv("data/housing.csv")
d6<-read.csv("data/testing by state.csv")

d1 %>% 
  left_join(d2, by = ("fips")) -> d7
d7 %>% 
  left_join(d3, by = ("fips")) -> d8
d8 %>% 
  left_join(d4, by = ("fips")) -> d9
d9 %>% 
  left_join(d5, by = ("fips")) -> d10
d10 %>% 
  left_join(d6, by = ("state")) -> d11

write.csv(d11, "data/merged.csv")
