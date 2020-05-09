\name{split.data}
\alias{split.data}
\title{Variables split across multiple columns (simulated)}
\usage{
data(split.data)
}
\description{
The \code{split.data} data frame demonstrates a situation in which variables are split across multiple columns. Such a situation can happen when multiple people are involved in data entry and are not using the same naming system. Ideally, in this data frame the variables \code{income_before} and \code{before} should be just one column, and likewise, \code{income_after} and \code{after} should be just one column.
}

\format{
data frame with 5 observations of  7 variables:

\itemize{
\item \code{village}: village name (factor)       
\item \code{income_before}: income before intervention (numeric)        
\item \code{income_after}: income after intervention (numeric)
\item \code{language}: language (factor)   
\item \code{percentage}: percentage change (income after compared to income before) (numeric)
\item \code{before}: income before intervention (numeric)        
\item \code{after}: income after intervention (numeric)  
}

}

\examples{
library(tidyverse)
library(condev)

data(split.data)

# coalescing income_before and before into income_before
# coalescing income_after and after into income_after
# removing the before & after columns from data frame

split.data \%>\% 
  mutate(income_before = coalesce(income_before, before), 
         income_after = coalesce(income_after, after)) \%>\% 
  select(-c(before,after))
}
