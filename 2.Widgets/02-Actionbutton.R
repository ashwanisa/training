library(shiny)
ui <- fluidPage(
  
  # Copy the line below to make an action button
  actionButton("action", label = "Action123"),
  
  hr(),
  fluidRow(column(2, verbatimTextOutput("value")))
  
)

server <- function(input, output) {
  
  # You can access the value of the widget with input$action, e.g.
  output$value <- renderPrint({ input$action })
  
}
shinyApp(ui = ui, server = server)