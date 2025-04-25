roche_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com", repos = "datascience/general/278_SCE-scheduled-metrics"
  )
tbl <- roche_stats |> get_issues(since = "2024-01-01")
