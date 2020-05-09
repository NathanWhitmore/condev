\name{clinic}
\alias{clinic}
\title{Patient visits to health clinic (simulated)}
\usage{
data(clinic)
}
\description{
The \code{clinic} data frame was made to emulate data associated with patient visits to a health clinic (in relation to pregnancy checks and child birth). This data frame is specifically designed to show how the \code{tidyverse} package can be used to anonymise data.

}


\format{
data frame with 368 observations of 4 variables:


\itemize{
\item \code{name}: person's name (character)    
\item \code{village}: village name (character)    
\item \code{visit.type}: clinic visit type (two types: \code{visitation.date} or \code{birthdate})
\item \code{date}: unnamed column (date) 
   
}

As the data frame was constructed as a tibble variables containing text are read as characters rather than factors. 

}


\examples{
library(tidyverse)
library(condev)

data(clinic)

# anonymising names
clinic \%>\% 
  mutate(name =  as.factor(name),
         name = fct_anon(name, prefix="F"))

}
