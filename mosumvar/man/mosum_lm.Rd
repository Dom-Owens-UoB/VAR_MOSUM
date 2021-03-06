% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mosum_lm.R
\name{mosum_lm}
\alias{mosum_lm}
\title{MOSUM procedure for multivariate regression}
\usage{
mosum_lm(
  X,
  G,
  method = c("Wald", "Score")[1],
  alpha = 0.05,
  criterion = c("eps", "eta")[1],
  nu = 0.25
)
}
\arguments{
\item{X}{data matrix with response in column 1, and intercept in any other column}

\item{G}{integer MOSUM bandwidth}

\item{method}{string indicating which of `Wald` or `Score` to use}

\item{alpha}{Numeric significance level}

\item{criterion}{string location procedure}

\item{nu}{Numeric location procedure hyperparameter}
}
\value{
list containing Boolean test outcome `Reject`, Numeric rejection threshold `Threshold`, 
 Numeric vector of test statistic `mosum`, Integer vector of estimated change points `cps`, Plot `plot`,
}
\description{
MOSUM procedure for multivariate regression
}
\examples{
data(X0df)
mosum_lm(X0df, 200)
data(X1df)
mosum_lm(X1df, 200)
}
