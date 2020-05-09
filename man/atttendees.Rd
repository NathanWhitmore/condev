\name{attendees}
\alias{attendees}
\title{Training course attendance (simulated)}
\usage{
data(attendees)
}
\description{
The \code{attendees} data frame was made to emulate the data that would be collected by conservation and development projects when undertaking training projects. Generally the collection of such data is mandatory as proof that training actually took place. Most donors expect that training data be presented in a project report as a summary table. Furthermore, there is the expectation that such summary tables will separate out data associated with vulnerable groups and under represented groups (e.g. women).

This data frame emulates data collected from 5 villages, in which 3 types of courses were run: \code{vanilla} (vanilla farming), \code{forestry} (sustainable forestry management), and \code{watershed} (watershed management).


}

\format{
data frame with 330 observations of 5 variables:

\itemize{
\item \code{gender}: gender of attendee (character)    
\item \code{village}: village of attendee (character)    
\item \code{name}: name of person (character) 
\item \code{course}: type of training course (character) 
\item \code{training.dates}: date of training  (character)   
}

As the data frame was constructed as a tibble variables containing text are read as characters rather than factors. 

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
