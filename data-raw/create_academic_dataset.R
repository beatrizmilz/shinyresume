library(magrittr, include.only = "%>%")
tibble::tibble(
  status = character(),
  type_of_publication = character(),
  year = integer(),
  title = character(),
  authors = character(),
  item_info = character(),
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
    item_info = "LatinR 2020 - *Conferencia Latinoamericana sobre
    Uso de R en Investigación + Desarrollo*. 7 a 9 de outubro de 2020",
    url_text = "https://github.com/LatinR/presentaciones-LatinR2020/blob/main/trabajos/LatinR2020_envio_16.pdf",
    # url_code = character(),
    url_slides = "https://macroamb-latin-r.netlify.app/"
  ) %>%
  
  tibble::add_row(
    status = "Presented",
    type_of_publication = "Conference presentation",
    year = 2020,
    title = "Levantamento exploratório de estudos sobre a Governança ambiental
    na Macrometrópole Paulista",
    authors = "Beatriz Milz, Pedro Roberto Jacobi",
    item_info = "IN: Caderno de resumos do I Fórum de Governança Ambiental da 
    Macrometrópole Paulista. Organizadores: Pedro Henrique C. Torres e Pedro Roberto Jacobi
    (Organizadores), São Paulo: IEE-USP, 1ª ed., 2019, 331 pgs. ISBN 978-85-86923-56-2",
    url_text = "http://pesquisa.ufabc.edu.br/macroamb/wp-content/uploads/2019/12/forum_macroamb_cad_resumo_FINAL-compactado.pdf",
    # url_code = ",
    #url_slides = ""
  ) %>%
  

  
  tibble::add_row(
    status = "Presented",
    type_of_publication = "Conference presentation",
    year = 2019,
    title = "Governança da Água e perspectivas para a avaliação da qualidade de
    informações em indicadores de transparência",
    authors = "Beatriz Milz, Pedro Roberto Jacobi",
    item_info = "Anais do IV Encontro Nacional da Associação Nacional de
    Pós-graduação e Pesquisa em Ambiente e Sociedade - ENANPPAS 2019",
    url_text = "https://beatrizmilz.github.io/resume/publications/2019-Enanppas.pdf",
    # url_code = character(),
    url_slides = "https://milz-2019enanppas.netlify.app/"
  ) %>%

  tibble::add_row(
    status = "Presented",
    type_of_publication = "Conference presentation",
    year = 2021,
    title = "  Transparency of Information on the Water Basin Committees Plenums
    in the Sao Paulo Macrometropolis, Brazil",
    authors = "Beatriz Milz, Pedro Roberto Jacobi",
    item_info = "*International Sociological Association (ISA) Forum of
    Sociology: Challenges of the 21st Century: Democracy, Environment,
    Inequalities, Intersectionality*. 23 à 28 de fevereiro de 2021",
    #url_text = "",
    url_code = "https://github.com/beatrizmilz/IV_ISA_2021",
    url_slides = "https://macroamb-isaconf2021.netlify.app/"
  ) %>%
  tibble::add_row(
    status = "Published",
    type_of_publication = "Book chapter",
    year = 2020,
    title = "Chapter 10 - Recent extreme climate events in the São Paulo 
    Macrometropolis",
    authors = "Beatriz Milz, Ana Carolina Campos",
    item_info = "IN: Adaptation and Public Policies in the São Paulo Macro
    Metropolis: A Science-Policy Approach. 1. ed. – São Paulo: IEE-USP, 2020.
    Orgs: <a href='https://orcid.org/0000-0002-0468-4329'>TORRES, P. H. C.
    <i class='fab fa-orcid'></i></a>; <a href='https://orcid.org/0000-0001-6143-3019'>
    JACOBI, P. R. <i class='fab fa-orcid'></i></a>;
    <a href='https://orcid.org/0000-0003-4531-3513'>BARBI, F.
    <i class='fab fa-orcid'></i></a>; <a href='https://orcid.org/0000-0003-1182-418X'>
    GONÇALVES, L. R. <i class='fab fa-orcid'></i></a>",
    url_text = "https://doi.org/10.11606/9788586923593"
    #url_code = character(),
    #url_slides = character()
  ) %>% 
  
  tibble::add_row(
    status = "Published",
    type_of_publication = "Book chapter",
    year = 2019,
    title = "Breve levantamento de eventos climáticos extremos na Macrometrópole
    Paulista",
    authors = "Beatriz Milz, Ana Carolina Campos",
    item_info = "IN: Governança e Planejamento Ambiental: adaptação e políticas
    públicas na Macrometrópole Paulista. Editora Letra Capital. 2019. p. 114–119.",
    url_text = "https://www.letracapital.com.br/produto/governanca-e-planejamento-ambiental-adaptacao-e-politicas-publicas-na-macrometropole-paulista/"
    #url_code = character(),
    #url_slides = character()
  ) %>% 

  
  tibble::add_row(
    status = "Published",
    type_of_publication = "Journal",
    year = 2019,
    title = "Barragens de água na Macrometrópole Paulista",
    authors = "Beatriz Milz, Ana Carolina Campos",
    item_info = "Diálogos Socioambientais na Macrometrópole Paulista. Volume 2. 2019. p. 34-37",
    url_text = "https://periodicos.ufabc.edu.br/index.php/dialogossocioambientais/issue/view/23"
    #url_code = character(),
    #url_slides = character()
  ) %>% 

  tibble::add_row(
    status = "Submitted",
    type_of_publication = "Book chapter",
    year = 2021, # PREVISTO
    title = "Seguridad hídrica y gobernanza del agua en la metrópolis de São Paulo",
    authors = "Wagner Costa Ribeiro, Pedro Roberto Jacobi, Beatriz Milz",
    item_info = "IN: *Seguridad hídrica, gobernanza del agua y conflictos: estudio comparado de casos en América Latina*. Org: Javier Gonzaga (Universidad de Caldas – Colombia)",
    #url_text = ""
    #url_code = character(),
    #url_slides = character()
  ) %>% 
  
  
  tibble::add_row(
    status = "Submitted",
    type_of_publication = "Book chapter",
    year = 2021, # PREVISTO
    title = "Polycentric water governance in the Urban Global South",
    authors = "Klaus Frey, Ruth Ferreira Ramos, Lidiane Alonso Paixão dos Anjos, Pedro Roberto Jacobi, Beatriz Milz",
    item_info = "Book Sustainability in Natural Resources Management and Land Planning. Editora Springer",
    #url_text = ""
    #url_code = character(),
    #url_slides = character()
  ) %>% 
  
  tibble::add_row(
    status = "Submitted",
    type_of_publication = "Book chapter",
    year = 2021, # PREVISTO
    title = "Levantamento de estudos sobre a Macrometrópole Paulista entre os anos de 2010 e 2020",
    authors = "Beatriz Milz, Pedro Roberto Jacobi",
    item_info = "IN: Inovação para Governança da Macrometrópole Paulista face à
    emergência climática. Organizadores: <a href='https://orcid.org/0000-0001-6143-3019'>
    JACOBI, PEDRO ROBERTO</a>; <a href='https://orcid.org/0000-0003-1154-6503'>GIATTI,
    LEANDRO LUIZ</a>. Editora CRV",
    #url_text = ""
    #url_code = character(),
    #url_slides = character()
  ) %>% 

  
  tibble::add_row(
    status = "Submitted",
    type_of_publication = "Book chapter",
    year = 2021, # PREVISTO
    title = "Paranapiacaba, Água e o Abastecimento da Macrometrópole Paulista",
    authors = "LOPES, I. M.; MEDICI, A., Beatriz Milz",
    item_info = "IN: Paranapiacaba: conflitos, saberes e perspectivas de 
    desenvolvimento na Macrometrópole Paulista. Organizado por Ramos, R.F.; 
    Passarelli, S.H.F; Sulaiman, S.; Jacobi, P",
    #url_text = ""
    #url_code = character(),
    #url_slides = character()
  ) %>% 
  

  readr::write_csv2("data/academic_dataset.csv")
