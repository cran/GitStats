#' @importFrom stringr str_length str_replace

#' @noRd
#' @description Transform R date object into git time stamp
#' @param date A date.
#' @return A character (git time stamp format).
date_to_gts <- function(date) {
  date_format <- lubridate::as_date(date)
  posixt_format <- lubridate::as_datetime(date)
  if (lubridate::as_datetime(date_format) == lubridate::as_datetime(posixt_format)) {
    paste0(date, "T00:00:00Z")
  } else {
    stringr::str_replace(
      date,
      "^(.{10})(.*)$",
      "\\1T\\2"
    ) %>%
      stringr::str_replace(" ", "") %>%
      stringr::str_replace(
        "^(.{19})(.*)$",
        "\\1Z"
      )
  }
}

#' @noRd
#' @description Transform git time stamp format into Posixt
#' @param date_vector A character vector of dates obtained from Git API.
#' @return A vector of dates in Posixt format.
gts_to_posixt <- function(date_vector) {
  date_vector <- gsub("T", " ", gsub("Z", "", date_vector))
  lubridate::as_datetime(date_vector)
}

#' @noRd
retrieve_githost <- function(api_url) {
  stringr::str_remove_all(
    string = api_url,
    pattern = "(?<=com).*|(https://)|(api.)|(.com)"
  )
}

#' @noRd
standardize_dates <- function(dates) {
  purrr::discard(dates, is.null) %>%
    purrr::map_vec(lubridate::as_datetime)
}

#' @importFrom utils URLencode URLdecode

#' @noRd
#' @description Apply url encoding to string
url_encode <- function(url) {
  URLencode(url, reserved = TRUE)
}

#' @noRd
is_name <- function(author) {
  length(stringr::str_split_1(author, " ")) > 1
}

#' @noRd
is_login <- function(author) {
  length(stringr::str_split_1(author, " ")) == 1 && identical(author, tolower(author))
}

get_gitlab_repo_id <- function(gitlab_repo_id) {
  sub(".*/(\\d+)$", "\\1", gitlab_repo_id)
}
