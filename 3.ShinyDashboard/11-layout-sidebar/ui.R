fluidPage(

  titlePanel("Hello Shiny!"),

  # put the side bar on the right
  sidebarLayout(position = "left",#position can be left,right
    sidebarPanel(
      sliderInput("bins", "Number of bins:", min = 1, max = 50, value = 30)
    ),

    mainPanel(
      plotOutput("distPlot")
    )
  )
)
