library(shiny)

ui <- fluidPage(
  
  # Copy the line below to make a date range selector
  fluidRow(
    # Copy the line below to make a date range selector
  column(3,dateRangeInput("dates", label = h3("Date range"))),
  # Copy the line below to make a date selector 
  column(3,dateInput("date", label = h3("Date input"), value = "2014-01-01"))
),
  hr(),
  fluidRow(column(3, verbatimTextOutput("value1")),
           column(3, verbatimTextOutput("value2")))
  
)

server <- function(input, output) {
  
  # You can access the values of the widget (as a vector of Dates)
  # with input$dates, e.g.
  output$value1 <- renderPrint({ input$dates })
  output$value2 <- renderPrint({ input$date })
  
}

shinyApp(ui = ui, server = server)
