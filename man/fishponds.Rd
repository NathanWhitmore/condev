\name{fishponds}
\alias{fishponds}
\title{Before-After-Control-Impact study (simulated)}
\usage{
data(fishponds)
}
\description{
The \code{fishponds} is a generic data frame. The data set demonstrate the use of repeated measure (linear effect models) design in livelihood projects. 
}

\format{

data frame with 24 observations of  4 variables:

\itemize{
\item \code{production.kg}: generic continuous variable (numeric) 
\item \code{year}: generic continuous variable (numeric) 
\item \code{feed}: feed type (2 factors: \code{high bran}, \code{low bran})
\item \code{farmer}: individual identifier for 12 different farmers
    
}
}

\examples{
library(nlme)
library(condev)

data(fishponds)

# repeated measures design controlling for farmer

lme(production.kg ~ year + feed, 
                    random=~1|farmer,
                    method="ML", data=fishponds)
}
