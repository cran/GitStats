gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = "datascience/rwd/543_eylea_hd"
  )

get_repos(gitlab_stats)

get_repos_urls(gitlab_stats)

get_repos_urls(gitlab_stats, with_files = "README.md")

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = "RWDInsightsEngineering/EEADashboard"
  )

get_repos(gitlab_stats, with_code = "shiny")

get_repos_urls(gitlab_stats, with_files = "DESCRIPTION")

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = c("datascience/rwd/543_eylea_hd", "datascience/rwd/4308_es-sclc-atezo-vs-durva", "RWDInsightsEngineering/RocheMetrics")
  )

get_repos(gitlab_stats)

get_repos(gitlab_stats, with_code = "tests")
get_repos(gitlab_stats, with_code = "quarto")
get_repos(gitlab_stats, with_files = "README.md")

get_repos_urls(gitlab_stats)

get_repos_urls(gitlab_stats, with_code = "tests")
get_repos_urls(gitlab_stats, with_code = "quarto")
get_repos_urls(gitlab_stats, with_files = "README.md")


gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering"
  )

get_repos(gitlab_stats)

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering",
    repos = c("datascience/rwd/543_eylea_hd", "datascience/rwd/4308_es-sclc-atezo-vs-durva")
  )

get_repos(gitlab_stats, add_contributors = FALSE)

get_repos_urls(gitlab_stats)

get_repos_urls(gitlab_stats, with_code = "quarto")
get_repos_urls(gitlab_stats, with_files = "DESCRIPTION")
get_repos_urls(gitlab_stats, with_files = "project_metadata.yaml")
get_repos_urls(gitlab_stats, with_files = c("project_metadata.yaml", "meta_data.yaml"))

github_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs",
    repos = c("dgkf/shinyDataFilter", "ddsjoberg/gtsummary", "mattsecrest/survivalCCW", "mattsecrest/ggTreatmentSequence")
  )

get_repos(github_stats)

get_repos(github_stats, with_code = "plot", add_contributors = FALSE)

get_repos_urls(github_stats)

get_repos_urls(github_stats, with_code = "shiny")
get_repos_urls(github_stats, type = "web", with_code = "shiny")

git_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = c("datascience/rwd/543_eylea_hd", "datascience/rwd/4308_es-sclc-atezo-vs-durva", "RWDInsightsEngineering/RocheMetrics")
  ) |>
  set_github_host(
    orgs = "r-world-devs",
    repos = c("dgkf/shinyDataFilter", "ddsjoberg/gtsummary", "mattsecrest/survivalCCW", "mattsecrest/ggTreatmentSequence")
  )

get_repos(git_stats)
get_repos(git_stats, with_files = "DESCRIPTION")
get_repos_urls(git_stats, with_files = c("project_metadata.yaml", "meta_data.yaml"))

get_repos_urls(git_stats, with_code = c("shiny", "purrr"))

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com"
  )

get_repos_urls(gitlab_stats, type = "api", with_code = "RocheData")
get_repos_urls(gitlab_stats, type = "web", with_code = "RocheTemplates")
get_repos_urls(gitlab_stats, type = "api", with_files = c("meta_data.yaml", "project_metadata.yaml"))

github_stats <- create_gitstats() |>
  set_github_host(
    host = "github.roche.com"
  )

get_repos_urls(github_stats, type = "api", with_code = "RocheData")
get_repos_urls(github_stats, type = "web", with_code = "RocheTemplates")
get_repos_urls(github_stats, type = "api", with_files = c("meta_data.yaml", "project_metadata.yaml"))

get_repos(gitlab_stats)

get_repos(github_stats)

git_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com"
  ) |>
  set_github_host(
    host = "github.roche.com"
  )

repos_with_desc <- get_repos(git_stats, with_files = "DESCRIPTION", cache = FALSE)

get_repos_urls(git_stats, type = "api", with_files = c("meta_data.yaml", "project_metadata.yaml"))

git_stats <- create_gitstats() |>
  set_github_host(
    orgs = c("r-world-devs", "openpharma")
  ) |>
  set_gitlab_host(
    host = "code.roche.com"
  ) |>
  set_github_host(
    host = "github.roche.com"
  )

get_repos_urls(git_stats, type = "api", with_files = c("meta_data.yaml", "project_metadata.yaml"))

create_gitstats() |>
  set_github_host(
    orgs = c("openpharma")
  ) |> get_repos_urls(type = "api", with_files = c("meta_data.yaml", "project_metadata.yaml"))

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "pred-clinops"
  )

get_repos(gitlab_stats)
