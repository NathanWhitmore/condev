\name{messy}
\alias{messy}
\title{Messy data frame (simulated)}
\usage{
data(messy)
}
\description{
The \code{messy} data frame was made to emulate a data frame which has a large number of mistakes (that will prevent analysis). The messy data frame includes absent values, \code{NA}s and \code{NAN}s (not a number), inconsistent column headings, capitalisation mistakes, and incorrect factor names. 

In conservation and development projects most of the time the person who analyses the data is not the same one that collects the data. Ideally, the data should be corrected when it is entered. However, often mistakes persist and as a consequence the person analysing the data has to be able to clean the data. With very large data sets manual correction maybe so be impractical -- hence the need for correction using R code.

}

\format{
data frame with 6 observations of 5 variables:

\itemize{
\item \code{Village}: village name (factor)    
\item \code{income_before}: income before intervention (character)    
\item \code{INCOME..after.}: income after intervention (numeric)
\item \code{lang type}: language (factor) 
\item \code{x}: percentage change (income after compared to income before) (numeric)    
}

}



\examples{
library(janitor)
library(condev)

data(messy)

# standardising and renaming columns
# note automatic creation of x_2 by clean_names() function

messy \%>\% 
  clean_names() 

}
