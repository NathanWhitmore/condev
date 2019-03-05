library(randomNames)
library(tidyverse)
library(janitor)

set.seed(1)

male <- randomNames(100,
                    gender = 0,
                    ethnicity=2,
                    which.names="both",
                    name.order="first.last",
                    name.sep=" ",
                    sample.with.replacement=FALSE,
                    return.complete.data=TRUE)

Villages <- c(rep("Nugi",25),rep("Anota",20),rep("Maniwavie",15), rep("Takendu",20), rep("Lamaris",10))


male$village <- sample(Villages, 100,  replace =TRUE)
male$gender <- rep("male",100)

female <- randomNames(60,
                      gender = 1,
                      ethnicity=2,
                      which.names="both",
                      name.order="first.last",
                      name.sep=" ",
                      sample.with.replacement=FALSE,
                      return.complete.data=TRUE)

female$village <- sample(Villages, 60,  replace =TRUE)
female$gender <- rep("female",60)

unique(village.df$village)

village.df <- as.data.frame(rbind(male, female))
village.df$name <- paste(village.df$first_name, village.df$last_name)

training.dates <- c("8/10/2018", "8/10/2018", "12/10/2018" )


coffee <- c(0,1,1,1,1,1,1)
forestry <- c(0,0,1,1,1)
watersheds <- c(1,1,0,1)

village.df$coffee <- sample (coffee,160, replace =TRUE)
village.df$forestry <- sample (forestry,160, replace =TRUE)
village.df$watersheds <- sample (forestry,160, replace =TRUE)

village.df <- village.df %>% gather(course, attendance, coffee:watersheds)

village.df$attendance[village.df$attendance == 0] <- NA
village.df <- na.omit(village.df)

# random dates for one 
village.df$training.dates <- ifelse(village.df$course == "coffee", sample(training.dates, length(village.df$course), replace=TRUE), 0)
village.df$training.dates[village.df$course == "forestry"] <- "5/10/2018"
village.df$training.dates[village.df$course == "watersheds"] <- "6/10/2018"


unique(village.df$training.dates)

# make df
attendees <- village.df[,c(1,5:7,9)]

unique(df$training.dates)

# write file
# write.csv(df, "Attendees.csv", row.names = FALSE)
save(attendees, file = "attendees.RData")