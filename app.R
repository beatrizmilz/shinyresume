#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
source("data-raw/create_academic_dataset.R", encoding = "UTF-8")
source("data-raw/create_academic_badges.R", encoding = "UTF-8")
library(shiny)
library(magrittr, include.only = "%>%")

#academic_dataset <- readr::read_csv2("data/academic_dataset.csv")
academic_badges <- readr::read_csv2("data/academic_badges.csv")

# Define UI for application that draws a histogram
ui <- fluidPage(
    tags$style(
        "@import url(https://use.fontawesome.com/releases/v5.7.2/css/all.css);"
    ),
    # Application title
    titlePanel("Publications and conference presentations"),
    
    # Sidebar with a slider input for number of bins
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
                min = min(academic_badges$year,na.rm = TRUE),
                max = max(academic_badges$year,na.rm = TRUE),
                value = c(2019, 2021),
                timeFormat = "%Y"
            ),
            
            
            
            
        ),
        
        # Show a plot of the generated distribution
        mainPanel(shiny::uiOutput('markdown'))
    )
)

# Define server logic required to draw a histogram
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
