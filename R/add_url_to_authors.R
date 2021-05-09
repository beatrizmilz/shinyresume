add_url_to_authors <- function(names){
  names %>% 
  stringr::str_replace_all("Beatriz Milz", glue::glue('<a href="https://orcid.org/0000-0002-3064-4486">Beatriz Milz</a>')) %>% 
  stringr::str_replace_all("Pedro Roberto Jacobi|Pedro Jacobi", glue::glue('<a href="https://orcid.org/0000-0001-6143-3019">Pedro Roberto Jacobi</a>')) %>% 
  stringr::str_replace_all("Wagner Costa Ribeiro", glue::glue('<a href="https://orcid.org/0000-0002-3485-9521">Wagner Costa Ribeiro</a>')) %>% 
  stringr::str_replace_all("Zenaida Luisa Lauda-Rodriguez", glue::glue('<a href="https://orcid.org/0000-0003-2432-0255">Zenaida Luisa Lauda-Rodriguez</a>')) %>% 
  stringr::str_replace_all("Edson Grandisoli", glue::glue('<a href="https://orcid.org/0000-0002-1524-9074">Edson Grandisoli</a>')) %>% 
    
  stringr::str_replace_all("Ana Carolina Campos", glue::glue('<a href="https://bv.fapesp.br/pt/pesquisador/671872/ana-carolina-abreu-de-campos/">Ana Carolina Campos</a>'))
    
}
# add_url_to_authors(academic$authors)
