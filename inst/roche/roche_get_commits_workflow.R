devtools::load_all(".")

create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs"
  ) |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering"
  ) |>
  get_commits(
    since = "2022-06-01",
    verbose = TRUE
  )

create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = c("datascience/rwd/543_eylea_hd", "datascience/rwd/2016_eylea_vestrum_analysis")
  ) |>
  get_commits(since = "2020-01-01")

create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = c("nest/insights-engineering/rtables")
  ) |>
  get_commits(since = "2020-01-01")

create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "nest/insights-engineering"
  ) |>
  get_commits(since = "2022-01-01")

create_gitstats() |>
  set_github_host(
    host = "github.roche.com",
    orgs = c("E4ATI", "RWDScodeshare", "PHC")
  ) |>
  get_commits(since = "2022-01-01")

create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs"
  ) |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering"
  ) |>
  set_github_host(
    host = "github.roche.com",
    orgs = "RWDScodeshare"
  )

get_commits(
  gitstats = rwdie_stats,
  since = "2022-06-01",
  verbose = TRUE
)

get_commits_stats(
  gitstats = rwdie_stats,
  group_var = author,
  time_aggregation = "year"
)

git_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs",
    repos = "openpharma/visR"
  ) |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering",
    repos = c("datascience/rwd/543_eylea_hd", "datascience/rwd/2016_eylea_vestrum_analysis")
  )

get_commits(git_stats, since = "2024-01-01")

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering"
  )

get_commits(gitlab_stats, since = "2024-01-01")

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering",
    repos = c("datascience/rwd/543_eylea_hd", "datascience/rwd/2016_eylea_vestrum_analysis")
  )

get_commits(gitlab_stats, since = "2024-01-01")

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = "RWDInsightsEngineering/RocheMeta"
  )

get_commits(gitlab_stats, since = "2024-01-01")

github_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs",
    repos = "openpharma/visR"
  )

get_commits(github_stats, since = "2024-01-01")

github_stats <- create_gitstats() |>
  set_github_host(
    repos = "openpharma/visR"
  )

get_commits(github_stats, since = "2024-01-01")

github_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs"
  )

get_commits(github_stats, since = "2024-01-01")

github_stats <- create_gitstats() |>
  set_github_host(
    repos = "dgkf/shinyDataFilter"
  )

get_commits(github_stats, since = "2022-01-01") |>
  get_commits_stats(group_var = author_name)
