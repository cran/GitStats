git_stats <- create_gitstats() |>
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

get_repos_urls(git_stats,
               with_files = "project_metadata.yaml",
               progress   = FALSE)

get_repos_urls(git_stats,
               with_files = "project_metadata.yaml",
               cache      = FALSE,
               verbose    = FALSE,
               progress   = TRUE)

get_repos_urls(git_stats,
               with_code = "Shiny",
               in_files  = "DESCRIPTION",
               cache     = FALSE,
               verbose   = FALSE)

get_repos(git_stats)

get_repos(git_stats,
          cache    = FALSE,
          verbose  = FALSE,
          progress = TRUE)

get_repos(git_stats,
          cache   = FALSE,
          verbose = FALSE)

get_repos(git_stats,
          with_code = "Shiny")

get_repos(git_stats,
          with_code = "Shiny",
          cache     = FALSE,
          verbose   = FALSE)

get_repos(git_stats,
          with_code = "Shiny",
          cache     = FALSE,
          verbose   = FALSE,
          progress  = TRUE)

get_repos(git_stats,
          with_code = "Shiny",
          in_files  = "DESCRIPTION",
          cache     = FALSE)

get_repos(git_stats,
          with_code = c("shiny", "purrr"),
          in_files  = c("DESCRIPTION", "NAMESPACE"),
          verbose   = FALSE)

get_commits(git_stats, since = "2024-06-01")

get_commits(git_stats,
            since    = "2024-06-02",
            verbose  = FALSE,
            progress = TRUE)

get_release_logs(
  gitstats_object = git_stats,
  since           = "2024-06-02",
  verbose         = FALSE
)

get_release_logs(
  gitstats_object = git_stats,
  since           = "2024-06-01",
  verbose         = TRUE
)

git_stats <- create_gitstats() |>
  set_github_host(
    host = "github.roche.com"
  ) |>
  set_gitlab_host(
    host = "code.roche.com"
  )

package_usage <- get_R_package_usage(git_stats, "RocheTemplates")

package_usage <- get_R_package_usage(git_stats, "RocheData", verbose = FALSE)

roche_templates_data <- get_repos(git_stats, with_code = "RocheTemplates", in_files = "renv.lock")


git_stats <- create_gitstats() |>
  set_github_host(
    repos = c("openpharma/DataFakeR", "openpharma/visR")
  ) |>
  set_gitlab_host(
    repos = c("RWDInsightsEngineering/RocheMeta", "RWDInsightsEngineering/RocheMetrics")
  )

get_commits(git_stats, since = "2022-01-01")
