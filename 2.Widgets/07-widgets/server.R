library(shiny)
library(datasets)

# Define server logic required to summarize and view the 
# selected dataset
function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$dataset,
           "rock" = rock,
           "pressure" = pressure,
           "cars" = cars)
    })
    #read.csv(file="D:/Ashwani/Learning/Learning/R/template.csv", header=TRUE, sep=",")
    
  
  # Generate a summary of the dataset
  output$summary <- renderPrint({
    dataset <- datasetInput
    summary(dataset)
  })
  
  # Show the first "n" observations
  output$view <- renderTable({
    head(datasetInput, n = input$obs)
  })
}
