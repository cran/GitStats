rwdie_package_names <- c("cohortBuilder", "RocheDeploy", "RocheTemplates")

roche_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com"
  ) |>
  set_github_host(
    host = "github.roche.com"
  )

roche_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com"
  )

chevron_usage <- roche_stats |> get_repos_with_R_packages(
  packages = "chevron",
  verbose  = TRUE
)

gitstats_usage <- roche_stats |>
  get_repos_with_R_packages(
    packages = "GitStats",
    verbose  = TRUE
  )

rochedata_usage <- roche_stats |>
  get_repos_with_R_packages(
    packages = "RocheData",
    verbose  = TRUE
  )

rwdie_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering"
  )

rwdie_package_usage <- rwdie_stats |>
  get_repos_with_R_packages(
    packages = "GitStats",
    verbose  = TRUE
  )

rm_api <- RocheMeta::RocheMetaAPI$new()
packages <- rm_api$get_projects(tags = c("R package"))
package_names <- packages %>%
  purrr::map_chr(~ .$name) %>%
  unique()

git_stats <- GitStats::create_gitstats() %>%
  GitStats::set_gitlab_host(
    host = "code.roche.com"
  ) %>%
  GitStats::set_github_host(
    host = "github.roche.com"
  )

get_repos_with_R_packages(
  gitstats = git_stats,
  packages = "teal.gallery"
)

gitstats_usage <- git_stats |>
  get_repos_with_R_packages(
    packages = "GitStats",
    verbose  = TRUE
  )

rochedata_usage <- git_stats |>
  get_repos_with_R_packages(
    packages = "RocheData",
    verbose  = TRUE
  )

rochetemplates_usage <- git_stats |>
  get_repos_with_R_packages(
    packages = "RocheTemplates",
    verbose  = TRUE
  )

rwdie_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = c("RWDInsightsEngineering/RocheMeta", "nest/insights-engineering/teal.data",
              "RWDInsightsEngineering/RocheMetrics")
  )

rwdie_package_usage <- rwdie_stats |>
  get_repos_with_R_packages(
    packages = "dplyr",
    verbose  = TRUE
  )


github_roche_stats <- create_gitstats() |>
  set_github_host(
    host = "github.roche.com"
  )

gitstats_usage <- github_roche_stats |>
  get_repos_with_R_packages(
    packages = "GitStats",
    verbose  = TRUE
  )

rochedata_usage <- github_roche_stats |>
  get_repos_with_R_packages(
    packages = "RocheData",
    verbose  = TRUE
  )

repos_with_rochetemplates <- github_roche_stats |>
  get_repos_with_R_packages(
    packages = "RocheTemplates",
    verbose  = TRUE
  )

repos_with_rochetemplates

cohort_builder_usage <- git_stats |>
  get_repos_with_R_packages(
    packages = c("cohortBuilder", "shinyCohortBuilder"),
    verbose  = TRUE
  )
