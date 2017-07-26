library(shiny)
ui<- fluidPage(
  
  # Application title
  titlePanel("Hello Shiny!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      tags$blockquote("Tidy data sets are all the same. Each messy data set is messy in its own way.", cite = "Hadley Wickham"),
      tags$div(
        tags$h1("Heading"), 
        tags$h2("Subheading"), 
        tags$h3("Subsubheading"), 
        tags$h4("Subsubsubheading"), 
        tags$h5("Subsubsubsubheading"), 
        tags$h6("Subsubsubsubsubheading") 
      ),
      tags$i("This text is italicized."),
      tags$embed(src = "animation.swf")
    )
  )
)

server <- function(input,output){
  
}

shinyApp(ui,server)