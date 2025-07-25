# Set connection returns appropriate messages

    Code
      set_github_host(gitstats = test_gitstats, token = Sys.getenv("GITHUB_PAT"),
      orgs = c("openpharma", "r-world-devs"))
    Message
      > Checking owners...
      v Set connection to GitHub.

---

    Code
      test_gitstats %>% set_gitlab_host(token = Sys.getenv("GITLAB_PAT_PUBLIC"),
      orgs = c("mbtests"))
    Message
      > Checking owners...
      v Set connection to GitLab.

# When empty token for GitHub, GitStats pulls default token

    Code
      test_gitstats <- create_gitstats() %>% set_github_host(orgs = c("openpharma",
        "r-world-devs"))
    Message
      i Using PAT from GITHUB_PAT envar.
      > Checking owners...
      v Set connection to GitHub.

# When empty token for GitLab, GitStats pulls default token

    Code
      withr::with_envvar(new = c(GITLAB_PAT = Sys.getenv("GITLAB_PAT_PUBLIC")), {
        test_gitstats <- create_gitstats() %>% set_gitlab_host(orgs = "mbtests")
      })
    Message
      i Using PAT from GITLAB_PAT envar.
      > Checking owners...
      v Set connection to GitLab.

# Set GitHub host with particular repos vector instead of orgs

    Code
      test_gitstats %>% set_github_host(token = Sys.getenv("GITHUB_PAT"), repos = c(
        "r-world-devs/GitStats", "r-world-devs/shinyCohortBuilder",
        "openpharma/GithubMetrics", "openpharma/DataFakeR"))
    Message
      > Checking repositories...
      v Set connection to GitHub.

# Set GitLab host with particular repos vector instead of orgs

    Code
      test_gitstats %>% set_gitlab_host(token = Sys.getenv("GITLAB_PAT_PUBLIC"),
      repos = c("mbtests/gitstatstesting", "mbtests/gitstats-testing-2"))
    Message
      > Checking repositories...
      v Set connection to GitLab.

# When no organizations or repositories are set information is printed

    Code
      test_gitstats %>% set_github_host(token = Sys.getenv("GITHUB_PAT"), verbose = TRUE)
    Message
      i No `orgs` nor `repos` specified.
      i Searching scope set to [all].
      v Set connection to GitHub.

# Error shows, when wrong input is passed when setting connection and host is not passed

    x Token exists but does not grant access.
    i Check if you use correct token.
    ! Scope that is needed: [read_api].

# Error pops out, when two clients of the same url api are passed as input

    Code
      test_gitstats %>% set_github_host(token = Sys.getenv("GITHUB_PAT"), orgs = "pharmaverse") %>%
        set_github_host(token = Sys.getenv("GITHUB_PAT"), orgs = "openpharma")
    Message
      > Checking owners...
      v Set connection to GitHub.
      > Checking owners...
      v Set connection to GitHub.
    Condition
      Error:
      x You can not provide two hosts of the same API urls.

# Error pops out when `org` does not exist

    Code
      test_gitstats <- create_gitstats() %>% set_github_host(token = Sys.getenv(
        "GITHUB_PAT"), orgs = c("openparma"))
    Message
      > Checking owners...
    Condition
      Error in `purrr::map()`:
      i In index: 1.
      Caused by error:
      x Org/user you provided does not exist or its name was passed in a wrong way: openparma
      ! Please type your org/user name the way you see it in web URL.

---

    Code
      test_gitstats <- create_gitstats() %>% set_gitlab_host(token = Sys.getenv(
        "GITLAB_PAT_PUBLIC"), orgs = c("openparma", "mbtests"))
    Message
      > Checking owners...
    Condition
      Error in `purrr::map()`:
      i In index: 1.
      Caused by error:
      x Org/user you provided does not exist or its name was passed in a wrong way: openparma
      ! Please type your org/user name the way you see it in web URL.

---

    Code
      test_gitstats <- create_gitstats() %>% set_github_host(token = Sys.getenv(
        "GITHUB_PAT"), orgs = c("openpharma", "r_world_devs"))
    Message
      > Checking owners...
    Condition
      Error in `purrr::map()`:
      i In index: 2.
      Caused by error:
      x Org/user you provided does not exist or its name was passed in a wrong way: r_world_devs
      ! Please type your org/user name the way you see it in web URL.

# When wrong orgs and repos are passed they are excluded but host is created

    Code
      test_gitstats <- create_gitstats() %>% set_github_host(orgs = c("openpharma",
        "r_world_devs"), repos = c("r-world-devs/GitStats", "r-world-devs/GitMetrics"),
      verbose = TRUE, .error = FALSE)
    Message
      i Using PAT from GITHUB_PAT envar.
      > Checking owners...
      ! Org/user you provided does not exist: r_world_devs
      > Checking repositories...
      ! Repository you provided does not exist: https://api.github.com/repos/r-world-devs/GitMetrics
      v Set connection to GitHub.

