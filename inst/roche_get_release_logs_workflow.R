devtools::load_all(".")

test_gitstats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs"
  ) |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = c("RWDInsightsEngineering/RocheMeta")
  )

get_release_logs(test_gitstats, since = "2024-01-01")
