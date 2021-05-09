add_url_to_authors <- function(names) {
  names %>%
    stringr::str_replace_all(
      "Beatriz Milz",
      glue::glue(
        '<a href="https://orcid.org/0000-0002-3064-4486">Beatriz Milz</a>'
      )
    ) %>%
    stringr::str_replace_all(
      "Pedro Roberto Jacobi|Pedro Jacobi",
      glue::glue(
        '<a href="https://orcid.org/0000-0001-6143-3019">Pedro Roberto Jacobi</a>'
      )
    ) %>%
    stringr::str_replace_all(
      "Wagner Costa Ribeiro",
      glue::glue(
        '<a href="https://orcid.org/0000-0002-3485-9521">Wagner Costa Ribeiro</a>'
      )
    ) %>%
    stringr::str_replace_all(
      "Zenaida Luisa Lauda-Rodriguez",
      glue::glue(
        '<a href="https://orcid.org/0000-0003-2432-0255">Zenaida Luisa Lauda-Rodriguez</a>'
      )
    ) %>%
    stringr::str_replace_all(
      "Edson Grandisoli",
      glue::glue(
        '<a href="https://orcid.org/0000-0002-1524-9074">Edson Grandisoli</a>'
      )
    ) %>%
    stringr::str_replace_all(
      "Igor Matheus Santana-Chaves",
      glue::glue(
        '<a href="https://orcid.org/0000-0003-3833-9301">Igor Matheus Santana-Chaves</a>'
      )
    ) %>%
    stringr::str_replace_all(
      "Pedro Henrique Campello Torres",
      glue::glue(
        '<a href="https://orcid.org/0000-0002-0468-4329">Pedro Henrique Campello Torres</a>'
      )
    ) %>%
    stringr::str_replace_all(
      "Leandro Luiz Giatti",
      glue::glue(
        '<a href="http://orcid.org/0000-0003-1154-6503">Leandro Luiz Giatti</a>'
      )
    ) %>%
    stringr::str_replace_all(
      "Mariana Gutierres Arteiro da Paz",
      glue::glue(
        '<a href="http://orcid.org/0000-0002-4770-7842">Mariana Gutierres Arteiro da Paz</a>'
      )
    ) %>%
    stringr::str_replace_all(
      "Renata Ferraz de Toledo",
      glue::glue(
        '<a href="http://orcid.org/0000-0001-8715-0527">Renata Ferraz de Toledo</a>'
      )
    ) %>%
    
    stringr::str_replace_all(
      "Gabriela Di Giulio",
      glue::glue(
        '<a href="http://orcid.org/0000-0003-1396-9788">Gabriela Di Giulio</a>'
      )
    ) %>%
    
    stringr::str_replace_all(
      "Roberto Silva Jr|Roberto Donato da Silva Júnior",
      glue::glue(
        '<a href="http://orcid.org/0000-0002-9101-7048">Roberto Donato da Silva Júnior</a>'
      )
    ) %>%
    
    
    
    stringr::str_replace_all(
      "Kauê Lopes dos Santos",
      glue::glue(
        '<a href="http://orcid.org/0000-0001-9996-1079">Kauê Lopes dos Santos</a>'
      )
    ) %>%
    
    
    stringr::str_replace_all(
      "Sandra Momm",
      glue::glue(
        '<a href="http://orcid.org/0000-0002-9724-5375">Sandra Momm</a>'
      )
    ) %>%
    
    
    stringr::str_replace_all(
      "Edmilson Dias de Freitas",
      glue::glue(
        '<a href="http://orcid.org/0000-0001-8783-2747">Edmilson Dias de Freitas</a>'
      )
    ) %>%
    
    
    stringr::str_replace_all(
      "Pedro Luiz Côrtes",
      glue::glue(
        '<a href="http://orcid.org/0000-0003-4160-4073">Pedro Luiz Côrtes</a>'
      )
    ) %>%
    
    
    stringr::str_replace_all(
      "Alexander Turra",
      glue::glue(
        '<a href="http://orcid.org/0000-0003-2225-8371">Alexander Turra</a>'
      )
    ) %>%
    stringr::str_replace_all(
      "Sandro Dutra e Silva",
      glue::glue(
        '<a href="https://orcid.org/0000-0002-0001-5726">Sandro Dutra e Silva</a>'
      )
    ) %>%
    
    stringr::str_replace_all(
      "Klaus Frey",
      glue::glue(
        '<a href="https://orcid.org/0000-0002-7564-1764">Klaus Frey</a>'
      )
    ) %>%
    
    stringr::str_replace_all(
      "Ruth Ferreira Ramos",
      glue::glue(
        '<a href="https://orcid.org/0000-0003-2647-6966">Ruth Ferreira Ramos</a>'
      )
    ) %>%
    
    stringr::str_replace_all(
      "Lidiane Alonso Paixão dos Anjos",
      glue::glue(
        '<a href="https://orcid.org/0000-0001-8054-0987">Lidiane Alonso Paixão dos Anjos</a>'
      )
    ) %>%
    
    
    stringr::str_replace_all(
      "Diego Braga",
      glue::glue(
        '<a href="https://orcid.org/0000-0002-0816-9017">Diego Braga</a>'
      )
    ) %>%
    
    stringr::str_replace_all(
      "Edmilson Dias de Freitas",
      glue::glue(
        '<a href="https://orcid.org/0000-0001-8783-2747">Edmilson Dias de Freitas</a>'
      )
    ) %>%
    
    stringr::str_replace_all(
      "Vanessa Lucena Empinotti",
      glue::glue(
        '<a href="https://orcid.org/0000-0001-5789-6467">Vanessa Lucena Empinotti</a>'
      )
    ) %>%
    
    
    #stringr::str_replace_all("NOME", glue::glue('<a href="http://orcid.org/">NOME</a>')) %>%
    
    
    stringr::str_replace_all(
      "Ana Carolina Campos",
      glue::glue(
        '<a href="https://bv.fapesp.br/pt/pesquisador/671872/ana-carolina-abreu-de-campos/">Ana Carolina Campos</a>'
      )
    )
  
}
# add_url_to_authors(academic$authors)
