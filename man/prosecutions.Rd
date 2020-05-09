\name{prosecutions}
\alias{prosecutions}
\title{Village prosecution data (simulated)}
\usage{
data(prosecutions)
}
\description{
The \code{prosecutions} is a data frame emulating the number of monthly environmental prosecutions before and after an environmental awareness program with village magistrates. The study emulates a simple Before-After design. The purpose of the data set is to demonstrate Poisson regression using the \code{glm()} function. 
}

\format{

data frame with 120 observations of 4 variables:

\itemize{

\item \code{cases:} number of environmental prosecutions each month(integer)
\item \code{village:} home village of magistrate (factor)
\item \code{month:} month of prosecution (factor)
\item \code{intervention:} whether case data was from before or after the awareness program (factor)

}
}

\examples{
library(condev)

data(prosecutions)

# Poisson regresssion using glm()

glm(cases~intervention, family="poisson", data=prosecutions)
             
}   
         
                