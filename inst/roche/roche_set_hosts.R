git_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = c("banasm", "waisk"),
    token = Sys.getenv("GITLAB_PAT")
  )

get_repos(git_stats, add_contributors = FALSE)
get_repos_urls(git_stats)

git_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering",
    token = Sys.getenv("GITLAB_PAT")
  )

get_repos(git_stats, add_contributors = FALSE)
