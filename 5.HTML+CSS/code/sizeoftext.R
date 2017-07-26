library(shiny)

ui <- shinyUI(fluidPage(
  
  titlePanel("Example"),
  verbatimTextOutput("printout"),
  tags$head(tags$style(HTML("
                            #printout {
                            font-size: 120px;
                            }
                            ")))
  
  ))

server <- shinyServer(function(input, output, session) {
  
  output$printout <- renderText("Sample output")
  
})

shinyApp(ui = ui, server = server)