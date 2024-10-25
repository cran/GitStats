devtools::load_all(".")

test_gitstats <- create_gitstats() |>
  set_github_host(
    repos = c("openpharma/DataFakeR", "openpharma/visR", "r-world-devs/shinyCohortBuilder")
  ) |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering"
  )

get_commits(
  gitstats_object = test_gitstats,
  since           = "2024-06-01",
  until           = "2024-08-30",
  verbose         = TRUE
)
