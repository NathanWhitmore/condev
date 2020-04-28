\name{hunt}
\alias{hunt}
\title{Hunting data (simulated)}
\usage{
data(hunt)
}
\description{
The \code{hunt} is a data frame emulating village hunter data. The purpose of the data set is to demonstrate the necessity of checking for colinearity and multicolinearity, as in the data frame the variables \code{distance} and \code{hours} are colinear.

}

\format{

data.frame with 20 observations of  6 variables:

\itemize{

\item \code{hunter.ref:} reference name of hunter
\item \code{age:} age of hunter (years)
\item \code{village:} home village of hunter
\item \code{distance:} distance of hunter's home to forest edge
\item \code{hours:} hours spent hunting
\item \code{catch.weight}: total weight of catch (kg)

}
}

\examples{
library(condev)

data(hunt)

# visual check of colinearity

pairs(~age + distance + hours, data = hunt)
             
# check of multicolinearity

library(car)
model.check <- lm(catch.weight ~ age + distance + hours, data=hunt)
vif(model.check)        
}   
         
                