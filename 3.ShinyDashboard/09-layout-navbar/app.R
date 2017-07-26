library(shiny)


ui <- fluidPage(
  navbarPage(
        "My Application",
        tabPanel("Component 1"),
        tabPanel("Component 2"),
        tabPanel("Component 3")
      )
)
server <- function(input,output) {}

shinyApp(ui=ui, server = server)