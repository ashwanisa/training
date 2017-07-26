library(shiny)

ui <- dashboardPage(
  dashboardHeader(title = "Custom font",
                  titleWidth = 200),
  dashboardSidebar(),
  dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "custom.css")
    )
  )
)

server <- function(input,output) {}

shinyApp(ui= ui,server = server)