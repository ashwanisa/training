# 02-tags.R

library(shiny)

ui <- fluidPage(
  h1("My Shiny App"),
  p(style = "font-family:Impact",
    "See other apps in the",
    a("Shiny Showcase",
      href = "http://www.rstudio.com/
      products/shiny/shiny-user-showcase/")
  ),
  tags$b("Bold Text"),
  tags$code("Computer code"),
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
  tags$ol(
    tags$li("First list item"), 
    tags$li("Second list item"), 
    tags$li("Third list item")
  ),
  tags$embed(src = "seafood_platter.swf"),
  tags$img(src = "www.rstudio.com", width = "100px", height = "100px")
)

server <- function(input, output){}

shinyApp(ui = ui, server = server)