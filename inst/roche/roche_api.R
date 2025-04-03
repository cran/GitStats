roche_meta_api <- RocheMeta::RocheMetaAPI$new()
roche_projects <- roche_meta_api$get_projects(outputs = "table")
roche_projects$web_url

# remove duplicated data
roche_projects <- roche_projects |>
  dplyr::group_by(name) |>
  dplyr::arrange(desc(lubridate::as_datetime(repo_date)), .by_group = TRUE) |>
  dplyr::slice(1) |>
  dplyr::ungroup()

github_repos <- roche_projects$web_url[grep("github.com", roche_projects$web_url)]
github_roche_repos <- roche_projects$web_url[grep("github.roche.com", roche_projects$web_url)]
gitlab_roche_repos <- roche_projects$web_url[grep("code.roche.com", roche_projects$web_url)]

github_repos <- gsub("https://github.com/", "", github_repos)
github_roche_repos <- gsub("https://github.roche.com/", "", github_roche_repos)
gitlab_repos <- gsub("https://code.roche.com/", "", gitlab_roche_repos)

git_stats <- create_gitstats() |>
  set_github_host(
    repos = github_repos,
    token = Sys.getenv("GITHUB_PAT"),
    .error = FALSE
  ) |>
  set_github_host(
    host = "github.roche.com",
    repos = github_roche_repos,
    token = Sys.getenv("GITHUB_PAT_ROCHE"),
    .error = FALSE
  ) |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = gitlab_repos,
    token = Sys.getenv("GITLAB_PAT"),
    .error = FALSE
  )

commits_table <- git_stats |>
  GitStats::get_commits(
    since = "2020-01-01"
  )

releases_table <- git_stats |>
  GitStats::get_release_logs(
    since = "2020-01-01"
  )


issues_table <- git_stats |>
  GitStats::get_issues(
    since = "2020-01-01"
  )
