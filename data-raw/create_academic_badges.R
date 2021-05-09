library(magrittr, include.only = "%>%")
academic <- readr::read_csv2("data/academic_dataset.csv")

academic_badges <- academic %>%
  dplyr::mutate(
    status_badges = dplyr::case_when(
      status == "Presented" ~ glue::glue(
        "![Status](https://img.shields.io/badge/Status-Presented-green.svg)"
      ),
      status == "Published" ~ glue::glue(
        "![Status](https://img.shields.io/badge/Status-Published-green.svg)"
      ),
      status == "Submitted" ~ glue::glue(
        "![status](https://img.shields.io/badge/Status-Submitted-orange.svg)"
      ),
      TRUE ~ glue::glue(
        "![Status](https://img.shields.io/badge/Status-{status}-lightgray.svg)"
      )
    ),
    
    type_of_publication_badges = dplyr::case_when(
      type_of_publication == "Book chapter" ~ glue::glue(
        "![Type of publication](https://img.shields.io/badge/Type of publication-Book chapter-blue.svg)"
      ),
      type_of_publication == "Editorial" ~ glue::glue(
        "![Type of publication](https://img.shields.io/badge/Type of publication-Journal Editorial-yellow.svg)"
      ),
      type_of_publication == "Journal" ~ glue::glue(
        "![Type of publication](https://img.shields.io/badge/Type of publication-Journal-yellowgreen.svg)"
      ),
      type_of_publication == "Conference presentation" ~ glue::glue(
        "![Type of publication](https://img.shields.io/badge/Type of publication-Conference presentation-9cf.svg)"
      ),
      
      TRUE ~ glue::glue(
        "![Type of publication](https://img.shields.io/badge/Type of publication-{type_of_publication}-lightgray.svg)"
      )
    ),
    
    url_text_badges = dplyr::case_when(
      !is.na(url_text) ~ glue::glue("[![Read the text](https://img.shields.io/badge/URL-Text-lightgray.svg)]({url_text})"),
      TRUE ~ glue::glue("")
    ),
    
    url_code_badges = dplyr::case_when(
      !is.na(url_code) ~ glue::glue("[![Read the code](https://img.shields.io/badge/URL-Code-lightgray.svg)]({url_code})"),
      TRUE ~ glue::glue("")
    ),
    
    url_slides_badges = dplyr::case_when(
      !is.na(url_slides) ~ glue::glue("[![Read the slides](https://img.shields.io/badge/URL-Slides-lightgray.svg)]({url_slides})"),
      TRUE ~ glue::glue("")
    ),
    
  ) %>% 
  
  
  dplyr::mutate(
    authors = stringr::str_replace_all(authors, "Beatriz Milz", glue::glue('<a href="https://orcid.org/0000-0002-3064-4486">Beatriz Milz</a>')),
    authors = stringr::str_replace_all(authors, "Pedro Roberto Jacobi", glue::glue('<a href="https://orcid.org/0000-0001-6143-3019">Pedro Roberto Jacobi</a>'))
  )


academic_text <- academic_badges %>%
  dplyr::mutate(
    text =
      glue::glue(
        "- {status_badges} {type_of_publication_badges} {url_text_badges} {url_slides_badges} {url_code_badges} \n  - {year}. {authors}. {title}. {item_info}. \n\n \n\n"
      )
  )


academic_text %>%
  readr::write_csv2("data/academic_badges.csv")

