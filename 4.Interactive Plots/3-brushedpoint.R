library(shiny)
#Selection with brushedPoints()

ui <- basicPage(
  plotOutput("plot1", brush = "plot_brush"),
  verbatimTextOutput("info")
)

server <- function(input, output) {
  output$plot1 <- renderPlot({
    plot(mtcars$wt, mtcars$mpg)
  })
  
  output$info <- renderPrint({
    # With base graphics, need to tell it what the x and y variables are.
    brushedPoints(mtcars, input$plot_brush, xvar = "wt", yvar = "mpg")
  })
}

shinyApp(ui= ui, server =server)






#with ggplot2

library(shiny)
library(ggplot2)
ui <- basicPage(
  plotOutput("plot1", brush = "plot_brush", height = 250),
  verbatimTextOutput("info")
)

server <- function(input, output) {
  output$plot1 <- renderPlot({
    ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() +
      facet_grid(. ~ cyl) +
      theme_bw()
  })
  
  output$info <- renderPrint({
    brushedPoints(mtcars, input$plot_brush)
  })
}

shinyApp(ui, server)


#Getting All rows instead of selected rows
library(shiny)
library(ggplot2)
ui <- basicPage(
  plotOutput("plot1", brush = "plot_brush"),
  verbatimTextOutput("info")
)

server <- function(input, output) {
  options(width = 100) # Increase text width for printing table
  output$plot1 <- renderPlot({
    ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()
  })
  
  output$info <- renderPrint({
    brushedPoints(mtcars, input$plot_brush, allRows = TRUE)
  })
}

shinyApp(ui, server)



#select horizontally
library(shiny)
library(ggplot2)
ui <- fluidPage(
  plotOutput("plot1",
             brush = brushOpts(id = "plot_brush", fill = "#ccc", direction = "x"),
             height = 250
  )
)

server <- function(input, output) {
  output$plot1 <- renderPlot({
    ggplot(ChickWeight, aes(x=Time, y=weight, colour=factor(Chick))) +
      geom_line() +
      guides(colour=FALSE) +
      theme_bw()
  })
  
}

shinyApp(ui, server)


