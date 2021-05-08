library(magrittr, include.only = "%>%")
academic <- readr::read_csv2("data/academic_dataset.csv")

academic_badges <- academic %>% 
  dplyr::mutate(
    status = dplyr::case_when(
      status == "Presented" ~ glue::glue("![Status](https://img.shields.io/badge/Status-Presented-green.svg)"),
      TRUE ~ glue::glue("![Status](https://img.shields.io/badge/Status-{status}-gray.svg)")
    )
  )


academic_text <- academic_badges %>% 
  dplyr::mutate(text = 
                  glue::glue("- {status} {type_of_publication} \n\n"))


academic_text %>% 
  readr::write_csv2("data/academic_badges.csv")
