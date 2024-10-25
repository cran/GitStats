devtools::load_all(".")

test_gitstats <- create_gitstats() |>
  set_github_host(
    orgs = c("r-world-devs")
  ) |>
  set_gitlab_host(
    host = "code.roche.com",
    orgs = "RWDInsightsEngineering"
  )

md_files_structure <- get_files_structure(
  gitstats_object = test_gitstats,
  pattern  = "\\.md|\\.png",
  depth    = 2L,
  verbose  = FALSE,
  progress = TRUE
)

files_content <- get_files_content(
  gitstats_object = test_gitstats,
  verbose = FALSE,
  progress = TRUE
)

files_content <- get_files_content(test_gitstats, only_text_files = FALSE)
