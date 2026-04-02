## ----include = FALSE----------------------------------------------------------
has_tokens <- nzchar(Sys.getenv("GITHUB_PAT")) && nzchar(Sys.getenv("GITLAB_PAT_PUBLIC"))
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7,
  fig.height = 4,
  eval = has_tokens
)

## -----------------------------------------------------------------------------
library(GitStats)

git_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs",
    token = Sys.getenv("GITHUB_PAT")
  ) |>
  set_gitlab_host(
    orgs = c("mbtests"),
    token = Sys.getenv("GITLAB_PAT_PUBLIC")
  )
set_parallel(10) # optionally speed up processing

## -----------------------------------------------------------------------------
repos <- get_repos(git_stats, progress = FALSE)
dplyr::glimpse(repos)

## -----------------------------------------------------------------------------
repos_urls <- get_repos_urls(git_stats)
dplyr::glimpse(repos_urls)

## -----------------------------------------------------------------------------
commits <- git_stats |>
  get_commits(
    since = "2025-06-01",
    until = "2025-06-14",
    progress = FALSE
  )
git_stats
dplyr::glimpse(commits)

## -----------------------------------------------------------------------------
commits <- git_stats |>
  set_sqlite_storage("my_local_db") |>
  get_commits(
    since = "2025-06-01",
    until = "2025-06-14",
    progress = FALSE
  )
dplyr::glimpse(commits)
git_stats

## -----------------------------------------------------------------------------
new_git_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs",
    token = Sys.getenv("GITHUB_PAT")
  ) |>
  set_gitlab_host(
    orgs = c("mbtests"),
    token = Sys.getenv("GITLAB_PAT_PUBLIC")
  ) |>
  set_sqlite_storage("my_local_db")

commits <- new_git_stats |>
  get_commits(
    since = "2025-06-01",
    until = "2025-06-14",
    verbose = TRUE
  )
dplyr::glimpse(commits)

## -----------------------------------------------------------------------------
commits <- new_git_stats |>
  get_commits(
    since = "2025-06-01",
    until = "2025-06-14",
    verbose = TRUE,
    cache = FALSE,
    progress = FALSE
  )
dplyr::glimpse(commits)

## -----------------------------------------------------------------------------
commits <- new_git_stats |>
  get_commits(
    since = "2025-06-01",
    until = "2025-06-30",
    verbose = TRUE,
    progress = FALSE
  )
dplyr::glimpse(commits)

## -----------------------------------------------------------------------------
new_git_stats |>
  remove_sqlite_storage()

