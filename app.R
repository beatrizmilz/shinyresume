

source("data-raw/create_academic_dataset.R", encoding = "UTF-8")
source("data-raw/create_academic_badges.R", encoding = "UTF-8")
library(shiny)
library(magrittr, include.only = "%>%")

#academic_dataset <- readr::read_csv2("data/academic_dataset.csv")
academic_badges <- readr::read_csv2("data/academic_badges.csv")

# Define UI
ui <- fluidPage(
    # Application title
    titlePanel("Publications and conference presentations"),
    
    # Sidebar
    sidebarLayout(
        sidebarPanel(
            shiny::selectInput(
                inputId = "status",
                label = "Status:",
                choices = unique(academic_badges$status),
                multiple = TRUE,
                selected = unique(academic_badges$status)
                
            ),
            
            shiny::selectInput(
                inputId = "tipo_publicacao",
                label = "Type of publication:",
                choices = unique(academic_badges$type_of_publication),
                multiple = TRUE,
                selected = unique(academic_badges$type_of_publication)
                
            ),
            
            
            sliderInput(
                "ano",
                "Year:",
                min = min(academic_badges$year, na.rm = TRUE),
                max = max(academic_badges$year, na.rm = TRUE),
                value = c(2019, 2021),
                timeFormat = "%Y"
            )
            
            
            
            
        ),
        
        # main panel
        mainPanel(shiny::uiOutput('markdown'))
    )
)

# Define server logic required
server <- function(input, output) {
    output$markdown <- renderUI({
        texto <- academic_badges %>%
            dplyr::filter(year >= input$ano[1], year <= input$ano[2]) %>%
            dplyr::filter(status %in% input$status) %>%
            dplyr::filter(type_of_publication %in% input$tipo_publicacao) %>%
            dplyr::arrange(desc(year)) %>%
            dplyr::pull(text)
        
        HTML(markdown::markdownToHTML(text = texto))
    })
    
    
}

# Run the application
shinyApp(ui = ui, server = server)
