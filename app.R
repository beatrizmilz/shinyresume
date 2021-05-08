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
academic <- readr::read_csv2("data/academic_badges.csv")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Publicações e apresentações"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("ano",
                        "Ano:",
                        min = min(academic$year),
                        max = max(academic$year),
                        value = c(2019, 2020),
                        timeFormat = "%Y"
        )),
        
        # Show a plot of the generated distribution
        mainPanel(
               shiny::uiOutput('markdown')
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$markdown <- renderUI({
        texto <- academic %>% 
            dplyr::filter(year >= input$ano[1], year <= input$ano[2]) %>% 
            dplyr::pull(text)
        
        HTML(markdown::markdownToHTML(text = texto))
    })
    
    
}

# Run the application 
shinyApp(ui = ui, server = server)
