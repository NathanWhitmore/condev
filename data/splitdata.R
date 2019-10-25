library(tidyverse)
library(condev)
data(messy)

messy <- data.frame(
  person = c("Sione", NA, "Marama", "Oka", "Talia", "Zuri", "trevor"),
  score = c(NA, 153,NA, 147, 177, 161, 172),
  score2 = c(NA, 143,NA, 157, 173, 164, 169),
  group = c("C", "B","A", "B", "A","group a","Group a")
)

messy$percent <- round(messy$score2 / messy$score *100,0)
messy$percent[1] <- 0/0

split.data <- messy %>% 
  clean_names() %>% 
  rename(group = x, percentage = x_2) %>% 
  mutate(person = fct_recode(person, 
                             "Trevor" = "trevor"))%>%
  mutate(group = fct_recode(group, 
                            "A" = "group a",
                            "A" = "Group a")) %>% 
  mutate(person = fct_explicit_na(person, "Michiko"))

split.data$score1 <- c(184,NA,164, rep(NA,4))
split.data$score2 <- c(194,NA,174, rep(NA,4))

split.data <- split.data[,-5]
split.data

save(clinic, file = "split.data.RData")
