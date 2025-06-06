## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7,
  fig.height = 4
)

## ----eval = FALSE-------------------------------------------------------------
# library(GitStats)
# git_stats <- create_gitstats() |>
#   set_github_host(
#     orgs = c("r-world-devs", "openpharma"),
#     token = Sys.getenv("GITHUB_PAT")
#   ) |>
#   set_gitlab_host(
#     orgs = c("mbtests"),
#     token = Sys.getenv("GITLAB_PAT_PUBLIC")
#   )

## ----eval = FALSE-------------------------------------------------------------
# git_stats <- create_gitstats() |>
#   set_github_host(
#     orgs = c("r-world-devs", "openpharma"),
#     token = Sys.getenv("GITHUB_PAT")
#   ) |>
#   set_gitlab_host(
#     orgs = c("mbtests"),
#     token = Sys.getenv("GITLAB_PAT_PUBLIC")
#   )

## ----eval = FALSE-------------------------------------------------------------
# git_stats <- create_gitstats() |>
#   set_github_host(
#     repos = c("r-world-devs/GitStats", "r-world-devs/shinyCohortBuilder", "openpharma/DataFakeR"),
#     token = Sys.getenv("GITHUB_PAT")
#   ) |>
#   set_gitlab_host(
#     repos = "mbtests/gitstatstesting",
#     token = Sys.getenv("GITLAB_PAT_PUBLIC")
#   )

## ----eval = FALSE-------------------------------------------------------------
# git_stats <- create_gitstats() |>
#   set_github_host(
#     orgs = "openpharma",
#     repos = c("r-world-devs/GitStats", "r-world-devs/shinyCohortBuilder"),
#     token = Sys.getenv("GITHUB_PAT")
#   )

## ----eval = FALSE-------------------------------------------------------------
# git_stats <- create_gitstats() |>
#   set_github_host(
#     orgs = c("r-world-devs", "openpharma")
#   ) |>
#   set_gitlab_host(
#     orgs = c("mbtests")
#   )

