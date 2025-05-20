devtools::load_all(".")

git_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs",
    repos = "openpharma/visR"
  ) |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = c("datascience/rwd/543_eylea_hd", "RWDInsightsEngineering/RocheMeta")
  )

md_files <- get_files(
  gitstats = git_stats,
  pattern  = "\\.md|\\.Rmd",
  depth    = 2L,
  verbose = TRUE
)

rwd_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs"
  )

get_files(rwd_stats,
          "DESCRIPTION")

rwd_stats <- create_gitstats() |>
  set_github_host(
    repos = c("r-world-devs/GitStats", "openpharma/DataFakeR")
  )
get_files(rwd_stats, "DESCRIPTION")

rwd_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs",
    repos = "openpharma/DataFakeR"
  )
get_files(rwd_stats)

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering",
    repos = "datascience/rwd/543_eylea_hd"
  )
get_repos_trees(gitlab_stats)
get_files(gitlab_stats, file_path = "DESCRIPTION")

banasm_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "banasm"
  )
get_files(banasm_stats, "DESCRIPTION")

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = "datascience/rwd/543_eylea_hd"
  )
get_files(gitlab_stats)
get_files(gitlab_stats)

# Issue #605

gitlab_stats <- create_gitstats() |>
  set_gitlab_host(
    host = "code.roche.com",
    repos = "datascience/rwd/546_copd_marketscan"
  )
get_files(gitlab_stats)
get_files(gitlab_stats, pattern = "\\.md")
get_files(gitlab_stats, pattern = "\\.R$")
get_files(gitlab_stats, pattern = "*")

gitai_stats <- create_gitstats() |>
  set_github_host(
    repos = "r-world-devs/GitAI"
  )
get_files(gitai_stats)
get_files(gitai_stats, pattern = "\\.md")
get_files(gitai_stats, pattern = "\\.R$")
get_files(gitai_stats, pattern = "*")

rwd_stats <- create_gitstats() |>
  set_github_host(
    orgs = "r-world-devs"
  )

get_files(rwd_stats) # fails
