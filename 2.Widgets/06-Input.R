library(shiny)

ui <- fluidPage(
  
  fluidRow(
  column(3,numericInput("num", label = h3("Numeric input"), value = 1)),
  column(3,textInput("text", label = h3("Text input"), value = "Enter text..."))
  ),
  hr(),
  fluidRow(column(3, verbatimTextOutput("value1")),
           column(3, verbatimTextOutput("value2")))
)

server <- function(input, output) {
  
  # You can access the value of the widget with input$<varname>, e.g.
  fluidRow(
    output$value1 <- renderPrint({ input$num }),
    output$value2 <- renderPrint({ input$text })
    )
}

shinyApp(ui = ui, server = server)