devtools::load_all(".")

test_gitstats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs",
    repos = "openpharma/visR"
  ) |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "datascience/rwd",
    repos = "RWDInsightsEngineering/RocheMeta"
  )

get_release_logs(test_gitstats, since = "2024-01-01")

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering"
  )

get_release_logs(gitlab_stats, since = "2024-01-01")


gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "datascience/rwd",
    repos = "RWDInsightsEngineering/RocheMeta"
  )

get_release_logs(gitlab_stats, since = "2024-01-01")

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = "RWDInsightsEngineering/RocheMeta"
  )

get_release_logs(gitlab_stats, since = "2024-01-01")

github_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs",
    repos = "openpharma/visR"
  )

get_release_logs(github_stats, since = "2024-01-01")

github_stats <- create_gitstats() |>
  set_github_host(
    repos = "openpharma/visR"
  )

get_release_logs(github_stats, since = "2024-01-01")

github_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs"
  )

get_release_logs(github_stats, since = "2024-01-01")

github_stats <- create_gitstats() |>
  set_github_host(
    repos = "dgkf/ggpackets"
  )

get_release_logs(github_stats, since = "2022-01-01")

github_stats <- create_gitstats() |>
  set_github_host(
    repos = "dgkf/shinyDataFilter"
  )

get_release_logs(github_stats, since = "2022-01-01")
