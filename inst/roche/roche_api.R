roche_meta_api <- RocheMeta::RocheMetaAPI$new()
roche_projects <- roche_meta_api$get_projects(outputs = "table")
roche_projects$web_url

# remove duplicated data
roche_projects <- roche_projects |>
  dplyr::group_by(name) |>
  dplyr::arrange(desc(lubridate::as_datetime(repo_date)), .by_group = TRUE) |>
  dplyr::slice(1) |>
  dplyr::ungroup()

github_orgs <- roche_projects |> dplyr::filter(host == "github.com") |> dplyr::select(org) |> unlist() |> unique()
github_roche_orgs <- roche_projects |> dplyr::filter(host == "github.roche.com") |> dplyr::select(org) |> unlist() |> unique()
gitlab_roche_orgs <- roche_projects |> dplyr::filter(host == "code.roche.com") |> dplyr::select(org) |> unlist() |> unique()

git_stats <- create_gitstats() |>
  set_github_host(
    orgs = github_orgs,
    token = Sys.getenv("GITHUB_PAT"),
    .error = FALSE
  ) |>
  set_github_host(
    host = "github.roche.com",
    orgs = github_roche_orgs,
    token = Sys.getenv("GITHUB_PAT_ROCHE"),
    .error = FALSE
  ) |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = gitlab_roche_orgs,
    token = Sys.getenv("GITLAB_PAT"),
    .error = FALSE
  )

commits_table <- git_stats |>
  GitStats::get_commits(
    since = "2022-01-01"
  )

releases_table <- git_stats |>
  GitStats::get_release_logs(
    since = "2022-01-01"
  )

issues_table <- git_stats |>
  GitStats::get_issues(
    since = "2022-01-01"
  )
