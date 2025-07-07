devtools::load_all()

roche_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com"
  )
roche_stats |>
  get_repos_trees(depth = 0)
