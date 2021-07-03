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
  url_slides = character(),
  url_youtube = character()
) %>%
  # finalizados -----------
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
    url_slides = "https://macroamb-latin-r.netlify.app/",
    url_youtube = "https://www.youtube.com/watch?v=K8wmO3mSbU8"
    
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
    url_text = "https://github.com/beatrizmilz/IV_ISA_2021/blob/master/abstract.pdf",
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
    status = "Published",
    type_of_publication = "Book chapter",
    year = 2021, 
    title = "Levantamento de estudos sobre a Macrometrópole Paulista entre os anos de 2010 e 2020",
    authors = "Beatriz Milz, Pedro Roberto Jacobi",
    item_info = "IN: <a href='https://www.editoracrv.com.br/produtos/detalhes/35891-inovacao-para-governanca-da-macrometropole-paulista-face-a-emergencia-climatica'>Inovação para Governança da Macrometrópole Paulista face à
    emergência climática</a>. Organizadores: <a href='https://orcid.org/0000-0001-6143-3019'>
    JACOBI, PEDRO ROBERTO</a>; <a href='https://orcid.org/0000-0003-1154-6503'>GIATTI,
    LEANDRO LUIZ</a>. Editora CRV",
    url_text = "https://beatrizmilz.github.io/resume/publications/2021-capitulo-mmp.pdf"
    #url_code = character(),
    #url_slides = character()
  ) %>% 
  
## Editoriais -----

tibble::add_row(
  status = "Published",
  type_of_publication = "Journal Editorial",
  year = 2019,
  title = 'Editorial nº 1/2019 . Critical interdisciplinary sciences, crisis and 
  disasters',
  authors = "Pedro Roberto Jacobi, Leandro Luiz Giatti,
  Vanessa Lucena Empinotti,Pedro Luiz Côrtes, Roberto Donato da Silva Júnior,
    Zenaida Luisa Lauda-Rodriguez, Beatriz Milz",
  item_info = "<a href='http://scielo.br/asoc/'>Ambiente & Sociedade</a>,  São Paulo ,  v. 22",
  url_text = "http://www.scielo.br/scielo.php?script=sci_arttext&pid=S1414-753X2019000100201&lng=pt&nrm=iso"#,
  # url_code = character(),
  # url_slides = character()
) %>%

  
  tibble::add_row(
    status = "Published",
    type_of_publication = "Journal Editorial",
    year = 2019,
    title = 'Editorial nº 2/2019 . Nature in decline: warning of IPBES report
    on species extinction',
  authors = "Pedro Roberto Jacobi, 
    Zenaida Luisa Lauda-Rodriguez, Beatriz Milz",
  item_info = "<a href='http://scielo.br/asoc/'>Ambiente & Sociedade</a>,  São Paulo ,  v. 22",
  url_text = "http://www.scielo.br/scielo.php?script=sci_arttext&pid=S1414-753X2019000100202&lng=pt&nrm=iso"#,
  # url_code = character(),
  # url_slides = character()
  ) %>%
  
  
  
  tibble::add_row(
    status = "Published",
    type_of_publication = "Journal Editorial",
    year = 2019,
    title = 'Editorial nº 3/2019 . Threatened Amazon',
    authors = "Pedro Roberto Jacobi, Leandro Luiz Giatti, 
    Roberto Donato da Silva Júnior, Pedro Luiz Côrtes, Alexander Turra,
    Zenaida Luisa Lauda-Rodriguez, Beatriz Milz",
    item_info = "<a href='http://scielo.br/asoc/'>Ambiente & Sociedade</a>,  São Paulo ,  v. 22",
    url_text = "https://www.scielo.br/scielo.php?script=sci_arttext&pid=S1414-753X2019000100203&lng=pt&nrm=iso&tlng=pt"#,
    # url_code = character(),
    # url_slides = character()
  ) %>%
  

  tibble::add_row(
    status = "Published",
    type_of_publication = "Journal Editorial",
    year = 2020,
    title = 'Editorial nº 1/2020 . What fires in Australia indicate - Reflections on their scope',
    authors = "Pedro Roberto Jacobi, Edson Grandisoli, 
    Zenaida Luisa Lauda-Rodriguez, Beatriz Milz",
    item_info = "<a href='http://scielo.br/asoc/'>Ambiente & Sociedade</a>,  São Paulo ,  v. 23",
    url_text = "http://www.scielo.br/scielo.php?script=sci_arttext&pid=S1414-753X2020000100201&lng=en&nrm=iso"#,
    # url_code = character(),
    # url_slides = character()
  ) %>%
  
  tibble::add_row(
    status = "Published",
    type_of_publication = "Journal Editorial",
    year = 2020,
    title = 'Editorial N° 03/2020 The COVID-19 epoch: Interdisciplinary research towards a new just and sustainable ethic',
    authors = "Zenaida Luisa Lauda-Rodriguez, Beatriz Milz,
    Igor Matheus Santana-Chaves, Pedro Henrique Campello Torres, Pedro Roberto Jacobi",
    item_info = "<a href='http://scielo.br/asoc/'>Ambiente & Sociedade</a>,  São Paulo ,  v. 23",
    url_text = "http://www.scielo.br/scielo.php?script=sci_arttext&pid=S1414-753X2020000100203&lng=en&nrm=iso"#,
    # url_code = character(),
    # url_slides = character()
  ) %>%
  
  tibble::add_row(
    status = "Published",
    type_of_publication = "Journal Editorial",
    year = 2020,
    title = 'Editorial N° 04/2020 The emergence of coronavirus and 
    contemporary socio-environmental challenges',
    authors = "Leandro Luiz Giatti, Mariana Gutierres Arteiro da Paz,
    Renata Ferraz de Toledo, Zenaida Luisa Lauda-Rodriguez, Beatriz Milz",
    item_info = "<a href='http://scielo.br/asoc/'>Ambiente & Sociedade</a>,  São Paulo ,  v. 23",
    url_text = "http://www.scielo.br/scielo.php?script=sci_arttext&pid=S1414-753X2020000100204&lng=en&nrm=iso"#,
    # url_code = character(),
    # url_slides = character()
  ) %>%
  
  tibble::add_row(
    status = "Published",
    type_of_publication = "Journal Editorial",
    year = 2020,
    title = 'Editorial N° 05/2020 The interactions among science,
    politics and communication in a context of crisis',
    authors = "Gabriela Di Giulio, Pedro Roberto Jacobi, Roberto Silva Jr., 
    Kauê Lopes dos Santos, Zenaida Luisa Lauda-Rodriguez, Beatriz Milz",
    item_info = "<a href='http://scielo.br/asoc/'>Ambiente & Sociedade</a>,  São Paulo ,  v. 23",
    url_text = "http://www.scielo.br/scielo.php?script=sci_arttext&pid=S1414-753X2020000100205&lng=en&nrm=iso"#,
    # url_code = character(),
    # url_slides = character()
  ) %>%
  
  tibble::add_row(
    status = "Published",
    type_of_publication = "Journal Editorial",
    year = 2020,
    title = 'Editorial N° 06/2020 Planning and Urbanization in Climate
    Change Scenarios',
    authors = "Sandra Momm, Edmilson Dias de Freitas, Pedro Roberto Jacobi, 
    Igor Matheus Santana-Chaves, Zenaida Luisa Lauda-Rodriguez, Beatriz Milz",
    item_info = "<a href='http://scielo.br/asoc/'>Ambiente & Sociedade</a>,  São Paulo ,  v. 23",
    url_text = "http://www.scielo.br/scielo.php?script=sci_arttext&pid=S1414-753X2020000100206&lng=en&nrm=iso"#,
    # url_code = character(),
    # url_slides = character()
  ) %>%
  
  tibble::add_row(
    status = "Published",
    type_of_publication = "Journal Editorial",
    year = 2021,
    title = 'Editorial N° 01/2021 Science and environmental crisis
    amid fires and pandemia',
    authors = "Sandro Dutra e Silva, Pedro Roberto Jacobi, 
     Zenaida Luisa Lauda-Rodriguez, Beatriz Milz",
    item_info = "<a href='http://scielo.br/asoc/'>Ambiente & Sociedade</a>,  São Paulo ,  v. 24",
    url_text = "https://www.scielo.br/scielo.php?script=sci_arttext&pid=S1414-753X2021000100201&lng=pt&nrm=iso&tlng=en"#,
    # url_code = character(),
    # url_slides = character()
  ) %>%
  
  
  
# submetidos ---------------
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
    title = "Paranapiacaba, Água e o Abastecimento da Macrometrópole Paulista",
    authors = "LOPES, I. M.; MEDICI, A., Beatriz Milz",
    item_info = "IN: Paranapiacaba: conflitos, saberes e perspectivas de 
    desenvolvimento na Macrometrópole Paulista. Organizado por Ramos, R.F.; 
    Passarelli, S.H.F; Sulaiman, S.; Jacobi, P",
    #url_text = ""
    #url_code = character(),
    #url_slides = character()
  ) %>% 
  
  tibble::add_row(
    status = "Presented",
    type_of_publication = "Conference presentation",
    year = 2021, 
    title = "Coleta de dados automatizada e integração contínua utilizando 
    GitHub Actions: Exemplos com o Pacote Mananciais",
    authors = "Beatriz Milz",
    item_info = "[V International Seminar on Statistics with R](http://ser.uff.br/)",
    url_text = "https://beatrizmilz.com/talk/2021-ser-uff/",
    url_code = "https://github.com/eventoseroficial/Data_and_Code/tree/main/Beatriz%20Milz#readme",
    url_slides = "https://beatrizmilz.github.io/2021-SER/"
  ) %>% 
  
  
  readr::write_csv2("data/academic_dataset.csv")
