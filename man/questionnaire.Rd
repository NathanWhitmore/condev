\name{questionnaire}
\alias{questionnaire}
\title{Project evaluation (simulated)}
\usage{
data(questionnaire)
}
\description{
The \code{questionnaire} data frame is an emulation of survey data to evaluate a conservation and development project. The data frame is designed to demonstrate clustering and classification techniques.
}

\format{

data frame with 500 observations of  9 variables:

\itemize{
\item \code{vanilla}: if the interviewee had been involved in, or benefited from, the vanilla farming training 
\item \code{forestry}:  if the interviewee had been involved in, or benefited from, the sustainable forest management training 
\item \code{watershed}: if the interviewee had been involved in, or benefited from, the watershed management training 
\item \code{fish.trial}: if the interviewee had been involved in, or benefited from, the watershed management training 
\item \code{trapping}: if the interviewee had been involved in mongoose trapping
\item \code{gender}: the gender of the interviewee
\item \code{clinic}: if the interviewee had been visited in, or benefited from, the new medical clinic
\item \code{income}: the income category of the interviewee 
\item \code{overall}: how the interviewee rated the overall performance of the project (on a 5 point scale from very poor to very good)
}
}

\examples{
library(rpart)
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
rpart(overall ~ vanilla + gender + clinic + income, 
                method="class", data=training)
}                
                