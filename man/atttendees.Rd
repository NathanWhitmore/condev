\name{attendees}
\alias{attendees}
\title{Training course attendance (simulated)}
\usage{
data(attendees)
}
\description{
The \code{attendees} data frame was made to emulate the data that would be collected by conservation and development projects when undertaking training projects. Generally the collection of such data is mandatory to ensure transparency. Additionally, donors frequently ask for training data to be disaggregated by gender.

This data frame emulates data collected from 5 villages, in which 3 types of courses were run: \code{vanilla} (vanilla farming), \code{forestry} (sustainable forestry management), and \code{watershed} (watershed management).

}

\format{
data frame with 330 observations of 5 variables:

\itemize{
\item \code{gender}: gender of attendee(character)    
\item \code{village}: village of attendee (character)    
\item \code{name}: name of person (character) 
\item \code{course}: type of training course (character) 
\item \code{training.dates}: date of training  (character)   
}

}



\examples{
library(tidyverse)
library(condev)

data(attendees)

# summarising the training data by
# counts for each course and gender

attendees \%>\%
  group_by(course, gender) \%>\%
  summarise(count = n())
}
