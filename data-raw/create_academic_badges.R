library(magrittr, include.only = "%>%")
academic <- readr::read_csv2("data/academic_dataset.csv")
source("R/add_url_to_authors.R", encoding = "UTF-8")

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
      
      status == "Approved" ~ glue::glue(
        "![status](https://img.shields.io/badge/Status-Approved-lightgreen.svg)"
      ),
      
      TRUE ~ glue::glue(
        "![Status](https://img.shields.io/badge/Status-{status}-lightgray.svg)"
      )
    ),
    
    type_of_publication_badges = dplyr::case_when(
      type_of_publication == "Book chapter" ~ glue::glue(
        "![Type of publication](https://img.shields.io/badge/Type of publication-Book chapter-blue.svg)"
      ),
      type_of_publication == "Journal Editorial" ~ glue::glue(
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
      !is.na(url_text) ~ glue::glue(
        "[![Read the text](https://img.shields.io/badge/URL-Text-lightgray.svg)]({url_text})"
      ),
      TRUE ~ glue::glue("")
    ),
    
    url_code_badges = dplyr::case_when(
      !is.na(url_code) ~ glue::glue(
        "[![Read the code](https://img.shields.io/badge/URL-Code-lightgray.svg)]({url_code})"
      ),
      TRUE ~ glue::glue("")
    ),
    
    url_slides_badges = dplyr::case_when(
      !is.na(url_slides) ~ glue::glue(
        "[![Read the slides](https://img.shields.io/badge/URL-Slides-lightgray.svg)]({url_slides})"
      ),
      TRUE ~ glue::glue("")
    ),
    
    url_youtube_badges = dplyr::case_when(
      !is.na(url_youtube) ~ glue::glue(
        "[![Watch the presentation](https://img.shields.io/badge/URL-Video-lightgray.svg)]({url_youtube})"
      ),
      TRUE ~ glue::glue("")
    ),
    
  ) %>%
  
  
  dplyr::mutate(authors_link = add_url_to_authors(authors),
                item_info_link = add_url_to_authors(item_info),
                )


academic_text <- academic_badges %>%
  dplyr::mutate(
    ano_previsao = dplyr::case_when(
      status == "Submitted" ~ glue::glue("Not published yet"),
      status == "Approved" & type_of_publication == "Conference presentation" ~ glue::glue("Not presented yet"),
      TRUE ~ glue::glue("{year}")
    ),
    text =
      glue::glue(
        "- {status_badges} {type_of_publication_badges} <br> {url_text_badges} {url_slides_badges} {url_code_badges} {url_youtube_badges} \n  - {ano_previsao}. {authors_link}. {title}. {item_info_link}. \n\n \n\n \\<br>"
      )
  )


academic_text %>%
  readr::write_csv2("data/academic_badges.csv")
