devtools::load_all(".")

roche_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs"
  ) |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = c("RWDInsightsEngineering/RocheData", "RWDInsightsEngineering/GitProjectsExplorer")
  )
roche_stats
roche_stats |>
  get_repos(add_contributors = FALSE)

roche_stats |>
  get_repos(with_code = "Shiny")

roche_stats |>
  get_repos_with_R_packages("dplyr")

commits_stats <- roche_stats |>
  get_commits(since = "2025-01-01") |>
  get_commits_stats(time_aggregation = "month")

roche_stats

commits_stats
