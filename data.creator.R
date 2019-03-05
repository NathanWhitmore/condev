attendees <- read.csv("C:\\Users\\Nathan\\Documents\\R\\R documents\\R codes\\R for Conservation and Development Applications\\Attendees.csv")
clinic <- read.csv("C:\\Users\\Nathan\\Documents\\R\\R documents\\R codes\\R for Conservation and Development Applications\\clinic.csv")

library(here)
here()

save(attendees, file="data/attendees.RData")
save(clinic, file="data/clinic.RData")

library(condev)
data(clinic)
