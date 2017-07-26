
library(shiny)

ui <- fluidPage(
  titlePanel(title = h4("Training on hist",align = "right")),
  sidebarLayout(
    sidebarPanel(
      selectInput("var","select the variable",choices = c("Sepal.length"=1,"Sepal.Width"= 2,"Petal.Length"= 3,"Petal.Width"= 4)),
      br(),
      sliderInput("bins","Select the Bins",min=5,max = 25, value = 15),
      br(),
      radioButtons("color","Select the Color",choices = c("Green","Red","Yellow","Blue"),selected = "Green")
    )
    ,
    mainPanel(
      plotOutput("myhist")
    ) 
  )
)

server <- function(input,output){
  
  output$myhist <- renderPlot({
    colm <- as.numeric(input$var)
    hist(iris[,colm],breaks = seq(0,max(iris[,colm]),l=input$bins+1),col = input$color,main= "Histogram",xlab=names(iris[colm]))
  })
  
}

shinyApp(ui= ui,server = server)
