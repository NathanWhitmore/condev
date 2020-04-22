\name{split.data}
\alias{split.data}
\title{Variables split across multiple columns (simulated)}
\usage{
data(split.data)
}
\description{
The \code{split.data} data frame demonstrates a situation in which variables are split across multiple columns. Such a situation can happen when multiple people are involved in data entry and are not using the same naming system. Ideally, in this data frame the variables \code{first_score} and \code{score1} should be just one column, and likewise, \code{second_score} and \code{score2} should be just one column.
}

\format{
data frame with 7 observations of  6 variables:

\itemize{
\item \code{person}: name (factor)       
\item \code{first_score}: first score (numeric)         
\item \code{second_score}: second score (numeric)
\item \code{group}: factor with 3 levels  
\item \code{score1}: score 1 (numeric) needs to be combined with \code{first_score}
\item \code{score2}: score 2 (numeric) needs to be combined with \code{second_score}      

}

}



\examples{
library(tidyverse)
library(condev)

data(split.score)

# coalescing first_score & score1 into first_score
# coalescing second_score & score2 into first_score
# removing score1 & score2 from data frame

split.data \%>\% 
  mutate(first_score = coalesce(first_score,score1), 
         second_score = coalesce(second_score,score2)) \%>\% 
  select(-c(score1,score2))
}
