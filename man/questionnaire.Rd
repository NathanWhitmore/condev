\name{questionnaire}
\alias{questionnaire}
\title{Project evaluation (simulated)}
\usage{
data(questionnaire)
}
\description{
The \code{questionnaire} data frame is an emulation of survey data that would be used to evaluate a conservation and development project. The data frame is designed to demonstrate the usefulness of clustering and classification techniques.
}

\format{

data frame with 500 observations of  9 variables (all factors):

\itemize{
\item \code{vanilla}: if the interviewee had been involved (in any way) with the vanilla farming project
\item \code{forestry}:  if the interviewee had been involved (in any way) with the sustainable forest management project
\item \code{watershed}: if the interviewee had been involved (in any way) with the watershed management project
\item \code{fish.trial}: if the interviewee had been involved (in any way) with in the fish farming trial 
\item \code{trapping}: if the interviewee had been involved (in any way) with the mongoose trapping
\item \code{gender}: the gender of the interviewee
\item \code{clinic}: if the interviewee had visited the new medical clinic
\item \code{income}: the income category of the interviewee 
\item \code{overall}: how the interviewee rated the overall performance of the project (on a 5 point scale from very poor to very good)
}
}

\examples{
library(rpart)
library(rpart.plot)
library(condev)

data(questionnaire)

# separate questionnaire data into training 
# and testing data sets

set.seed(14)
no.train <- 0.5 * nrow(questionnaire)
index <- sample(nrow(questionnaire), no.train, replace=FALSE)
training <- questionnaire[index,]
testing <- questionnaire[-index,]


# run a classification (decision) tree 

mod <- rpart(overall ~ vanilla + gender + clinic + income, 
                       method="class", data=training)

# plot classification tree

prp(mod, type=5)
}                
                