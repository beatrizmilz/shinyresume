#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

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
    titlePanel("Publicações e apresentações"),
    
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
            
            
            sliderInput(
                "ano",
                "Ano:",
                min = min(academic_badges$year),
                max = max(academic_badges$year),
                value = c(2019, 2020),
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
            dplyr::pull(text)
        
        HTML(markdown::markdownToHTML(text = texto))
    })
    
    
}

# Run the application
shinyApp(ui = ui, server = server)
