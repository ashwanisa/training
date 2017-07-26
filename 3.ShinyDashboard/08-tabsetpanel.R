library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody(
mainPanel(
  tabsetPanel(
    tabPanel("Plot", fluidRow(),
             fluidRow(column(1,plotOutput("plot"),offset = 2)),
             fluidRow()
             ),
    tabPanel("Summary", verbatimTextOutput("summary")),
    tabPanel("Table", tableOutput("table"))
  )
))
)

server <- function(input,output) {}

shinyApp(ui=ui, server = server)