library(shiny)

ui <- fluidPage(
  
  fluidRow(
    column(3,checkboxInput("checkbox", label = "Choice A", value = TRUE)),
    column(3,checkboxGroupInput("checkGroup", label = h3("Checkbox group"), 
                                choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                                selected = 1)),
    column(3,radioButtons("radio", label = h3("Radio buttons"),
                 choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                 selected = 1))
  
 ),
  hr(),
  fluidRow(column(3, verbatimTextOutput("value1")),
           column(3, verbatimTextOutput("value2")),
           column(3, verbatimTextOutput("value3"))
           )
  
)

server <- function(input, output) {
  
  output$value1 <- renderPrint({ input$checkbox })
  output$value2 <- renderPrint({ input$checkGroup })
  output$value3 <- renderPrint({ input$radio })
}

shinyApp(ui = ui, server = server)
