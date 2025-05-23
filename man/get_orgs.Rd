% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_orgs.R
\name{get_orgs}
\alias{get_orgs}
\title{Get data on organizations}
\usage{
get_orgs(gitstats, cache = TRUE, verbose = is_verbose(gitstats))
}
\arguments{
\item{gitstats}{A GitStats object.}

\item{cache}{A logical, if set to \code{TRUE} GitStats will retrieve the last
result from its storage.}

\item{verbose}{A logical, \code{TRUE} by default. If \code{FALSE} messages and printing
output is switched off.}
}
\value{
A data.frame.
}
\description{
Pulls data on all organizations from a Git host and parses it
into table format.
}
\examples{
\dontrun{
my_gitstats <- create_gitstats() |>
  set_github_host(
    orgs = c("r-world-devs", "openpharma"),
    token = Sys.getenv("GITHUB_PAT")
  ) |>
  set_gitlab_host(
    orgs = "mbtests",
    token = Sys.getenv("GITLAB_PAT_PUBLIC")
  )
get_orgs(my_gitstats)
}
}
