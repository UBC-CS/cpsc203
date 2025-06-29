format_md_link <- function(link) {
  glue::glue('[{link |> stringr::str_remove("https://")}]({link})') |>
    I()
}
