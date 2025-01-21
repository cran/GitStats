rwdie_package_names <- c("cohortBuilder", "RocheDeploy", "RocheTemplates")

rwdie_package_usage <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com"
  ) |>
  set_github_host(
    host = "github.roche.com"
  ) |>
get_R_package_usage(
  packages = rwdie_package_names,
  verbose  = TRUE
)


rwdie_package_usage <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering"
  ) |>
  get_R_package_usage(
    packages = rwdie_package_names,
    verbose  = TRUE
  )
