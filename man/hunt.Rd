\name{hunt}
\alias{hunt}
\title{Hunting data (simulated)}
\usage{
data(hunt)
}
\description{
The \code{hunt} is a data frame emulating hunting data. Such data sets are commonly collected in countries where communities are reliant on wildlife for everyday food.

The purpose of \code{hunt} is to demonstrate the necessity of checking for colinearity and multicolinearity, as in the data frame the variables \code{distance} and \code{hours} are colinear.

}

\format{

data.frame with 20 observations of  6 variables:

\itemize{

\item \code{hunter.ref:} reference name of hunter (factor)
\item \code{age:} age of hunter (years) (integer)
\item \code{village:} home village of hunter (factor)
\item \code{distance:} distance of hunter's home to forest edge (numeric)
\item \code{hours:} hours spent hunting (numeric)
\item \code{catch.weight}: total weight of catch in kilograms (numeric)

}
}

\examples{
library(condev)
library(car)

data(hunt)

# visual check of colinearity

pairs(~age + distance + hours, data = hunt)
             
# check of multicolinearity

model.check <- lm(catch.weight ~ age + distance + hours, data=hunt)
vif(model.check)        
}   
         
                