library(magrittr, include.only = "%>%")
tibble::tibble(
  status = character(),
  type_of_publication = character(),
  year = integer(),
  title = character(),
  authors = character(),
  event_or_book_info = character(),
  url_text = character(),
  url_code = character(),
  url_slides = character()
) %>%
  tibble::add_row(
    status = "Presented",
    type_of_publication = "Conference presentation",
    year = 2020,
    title = "Avaliação da transparência em atas de reuniões dos Comitês de 
    Bacias Hidrográficas na Macrometrópole Paulista (Brasil)",
    authors = "Beatriz Milz, Pedro Roberto Jacobi, Diego Braga",
    event_or_book_info = "LatinR 2020 - *Conferencia Latinoamericana sobre
    Uso de R en Investigación + Desarrollo*. 7 a 9 de outubro de 2020.",
    url_text = "https://github.com/LatinR/presentaciones-LatinR2020/blob/main/trabajos/LatinR2020_envio_16.pdf",
    # url_code = character(),
    url_slides = "https://macroamb-latin-r.netlify.app/"
  ) %>% 
  
  
  
  tibble::add_row(
    status = "Presented",
    type_of_publication = "Conference presentation",
    year = 2019,
    title = "Governança da Água e perspectivas para a avaliação da qualidade de
    informações em indicadores de transparência",
    authors = "Beatriz Milz, Pedro Roberto Jacobi",
    event_or_book_info = "IX ENANPPAS",
    url_text = "https://beatrizmilz.github.io/resume/publications/2019-Enanppas.pdf",
    # url_code = character(),
    url_slides = "https://milz-2019enanppas.netlify.app/"
  ) %>% 
  
  


  
  
  readr::write_csv2("data/academic_dataset.csv")
