% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_repos.R
\name{get_repos}
\alias{get_repos}
\title{Get data on repositories}
\usage{
get_repos(
  gitstats,
  add_contributors = TRUE,
  with_code = NULL,
  in_files = NULL,
  with_files = NULL,
  cache = TRUE,
  verbose = is_verbose(gitstats),
  progress = verbose
)
}
\arguments{
\item{gitstats}{A GitStats object.}

\item{add_contributors}{A logical parameter to decide whether to add
information about repositories' contributors to the repositories output
(table). If set to \code{FALSE} it makes function run faster as, in the case of
\code{org} search mode, it reaches only \code{GraphQL} endpoint with a query on
repositories, and in the case of \code{code} search mode it reaches only
\verb{repositories REST API} endpoint. However, the pitfall is that the result
does not convey information on contributors. \cr\cr When set to \code{TRUE} (by
default), \code{GitStats} iterates additionally over pulled repositories and
reaches to the \verb{contributors APIs}, which makes it slower, but gives
additional information.}

\item{with_code}{A character vector, if defined, GitStats will pull
repositories with specified code phrases in code blobs.}

\item{in_files}{A character vector of file names. Works when \code{with_code} is
set - then it searches code blobs only in files passed to \code{in_files}
parameter.}

\item{with_files}{A character vector, if defined, GitStats will pull
repositories with specified files.}

\item{cache}{A logical, if set to \code{TRUE} GitStats will retrieve the last
result from its storage.}

\item{verbose}{A logical, \code{TRUE} by default. If \code{FALSE} messages and printing
output is switched off.}

\item{progress}{A logical, by default set to \code{verbose} value. If \code{FALSE} no
\code{cli} progress bar will be displayed.}
}
\value{
A data.frame.
}
\description{
Pulls data on all repositories for an organization, individual
user or those with a given text in code blobs (\code{with_code} parameter) or a
file (\code{with_files} parameter) and parse it into table format.
}
\examples{
\dontrun{
my_gitstats <- create_gitstats() \%>\%
  set_github_host(
    token = Sys.getenv("GITHUB_PAT"),
    orgs = c("r-world-devs", "openpharma")
  ) \%>\%
  set_gitlab_host(
    token = Sys.getenv("GITLAB_PAT_PUBLIC"),
    orgs = "mbtests"
  )
get_repos(my_gitstats)
get_repos(my_gitstats, add_contributors = FALSE)
get_repos(my_gitstats, with_code = "Shiny", in_files = "renv.lock")
get_repos(my_gitstats, with_files = "DESCRIPTION")
}
}
