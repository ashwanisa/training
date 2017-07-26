library(shiny)

ui <- fluidPage(
  # Copy the line below to make a file upload manager
    sidebarLayout(
      sidebarPanel(
        selectInput("dataset", "Choose a dataset:", 
                    choices = c("rock", "pressure", "cars")),
        downloadButton('downloadData', 'Download'),
        fluidRow(
          fileInput("file", label = h3("File input")),
          column(12, verbatimTextOutput("value"))
        )
    ),
    mainPanel(tableOutput('table')))
)

server <- function(input, output) {

  # You can access the value of the widget with input$file, e.g.
  output$value <- renderPrint({
    str(input$file)
  })
  
  datasetInput <- reactive({
    switch(input$dataset,
           "rock" = rock,
           "pressure" = pressure,
           "cars" = cars)
  })
  output$table <- renderTable({
    datasetInput()
  })

  output$downloadData <- downloadHandler(
    filename = function() { 
      paste(input$dataset, '.csv', sep=',') 
    },
    content = function(file) {
      write.csv(datasetInput(),file)
    }
  )
  
}

shinyApp(ui = ui, server = server)