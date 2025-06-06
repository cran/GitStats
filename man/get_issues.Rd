% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_issues.R
\name{get_issues}
\alias{get_issues}
\title{Get data on issues}
\usage{
get_issues(
  gitstats,
  since = NULL,
  until = Sys.Date() + lubridate::days(1),
  state = NULL,
  cache = TRUE,
  verbose = is_verbose(gitstats),
  progress = verbose
)
}
\arguments{
\item{gitstats}{A \code{GitStats} object.}

\item{since}{A starting date.}

\item{until}{An end date.}

\item{state}{An optional character, by default \code{NULL}, may be set to "open"
or "closed" if user wants one type of issues.}

\item{cache}{A logical, if set to \code{TRUE} GitStats will retrieve the last
result from its storage.}

\item{verbose}{A logical, \code{TRUE} by default. If \code{FALSE} messages and printing
output is switched off.}

\item{progress}{A logical, by default set to \code{verbose} value. If \code{FALSE} no
\code{cli} progress bar will be displayed.}
}
\value{
A table of \code{tibble} and \code{gitstats_issues} classes.
}
\description{
List all issues from all repositories for an organization or a
vector of repositories.
}
\examples{
\dontrun{
my_gitstats <- create_gitstats() \%>\%
  set_github_host(
    token = Sys.getenv("GITHUB_PAT"),
    repos = c("openpharma/DataFakeR", "openpharma/visR")
  ) \%>\%
  set_gitlab_host(
    token = Sys.getenv("GITLAB_PAT_PUBLIC"),
    orgs = "mbtests"
  )
 get_issues(my_gitstats, since = "2018-01-01", state = "open")
}
}
