## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7,
  fig.height = 4,
  message = FALSE
)

## ----eval = FALSE-------------------------------------------------------------
#  library(GitStats)
#  
#  github_stats <- create_gitstats() %>%
#    set_github_host(
#      orgs = c("r-world-devs", "openpharma"),
#      token = Sys.getenv("GITHUB_PAT")
#    ) %>%
#    verbose_off()
#  
#  repos_urls <- get_repos_urls(
#    gitstats = github_stats,
#    with_code = "shiny"
#  )

## ----eval = FALSE-------------------------------------------------------------
#  repos_urls <- get_repos_urls(
#    gitstats = github_stats,
#    with_code =  c("purrr", "shiny"),
#    in_files = c("DESCRIPTION", "NAMESPACE", "renv.lock")
#  )

## ----eval = FALSE-------------------------------------------------------------
#  repos_urls <- get_repos_urls(
#    gitstats = github_stats,
#    with_files = c("renv.lock", "DESCRIPTION")
#  )

## ----eval = FALSE-------------------------------------------------------------
#  package_usage <- get_R_package_usage(
#    gitstats = github_stats,
#    packages = c("shiny", "purrr"),
#    split_output = TRUE
#  )

