github_stats <- create_gitstats() |>
  set_github_host(
    host = "github.roche.com"
  )

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com"
  )

get_orgs(github_stats)

get_orgs(gitlab_stats)

git_stats <- create_gitstats() |>
  set_github_host(
    host = "github.roche.com"
  ) |>
  set_gitlab_host(
    host = "code.roche.com"
  )

get_orgs(git_stats)


gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = c("datascience/rwd", "botany")
  )

get_orgs(gitlab_stats)
