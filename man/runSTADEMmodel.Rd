% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runSTADEMmodel.R
\name{runSTADEMmodel}
\alias{runSTADEMmodel}
\title{Run JAGS model}
\usage{
runSTADEMmodel(
  file_name = NULL,
  mcmc_chainLength = 100,
  mcmc_burn = 10,
  mcmc_thin = 2,
  mcmc_chains = 1,
  jags_data = NULL,
  weekly_params = FALSE,
  seed = NULL,
  verbose = FALSE,
  parallel = TRUE,
  DIC = FALSE,
  win_model = c("neg_bin", "neg_bin2", "pois", "quasi_pois", "log_space"),
  trap_est = TRUE
)
}
\arguments{
\item{file_name}{name (with file path) to save the model as}

\item{mcmc_burn}{number of burn-in samples in each MCMC chain}

\item{mcmc_thin}{thinning interval for MCMC samples to save}

\item{mcmc_chains}{number of MCMC chains}

\item{jags_data}{list of data being passed to \code{JAGS} model, created by \code{prepJAGS}}

\item{weekly_params}{should weekly estimates be saved? Default is \code{FALSE}}

\item{seed}{starting seed value for RNG, to make results reproducible}

\item{verbose}{passed to the \code{jags} function}

\item{parallel}{passed to the \code{jags} function}

\item{DIC}{passed to the \code{jags} function}

\item{win_model}{what type of distribution should be used when modeling the window counts. \code{neg_bin} is a standard negative binomial distribution. \code{neg_bin2} is a more flexible version of a negative binomial, allowing the mean-variance relationship to take different forms. \code{pois} is a Poisson distribution. \code{quasi_pois} is the quasi-Poisson distribution. \code{log_space} assumes that the window counts have normal errors in log-space.}

\item{trap_est}{should an estimate of escapement based on the adult fish trap rate be used as a second observation of true total escapement, together with the window counts? Default is \code{TRUE}. If \code{FALSE}, \code{win_model} is automatically set to \code{pois}.}

\item{mcmc_chainlength}{number of total samples in each MCMC chain}
}
\description{
Run the JAGS model
}
\examples{
#runSTADEMmodel()
}
\author{
Kevin See
}
