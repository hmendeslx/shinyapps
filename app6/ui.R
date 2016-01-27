
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel(title = h2("Demonstration of renderPlot() - a histogram", align ="center")),

  # 
  sidebarLayout(
    sidebarPanel(
      
       selectInput("var", "1.Select the variable from Iris Database", c("Sepal.Length" = 1,
                  "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4)),
       
       br(),
       
       sliderInput("bins", "2.Select the number of BINs for histogram", min=5, max=25, value=15),
       
       br(),
       
       radioButtons("color", "3.Select the colour of the hostogram", 
                    choices=c("Green", "Red", "Yellow"), selected="Green")
                
    ),
    mainPanel(
              
        plotOutput("myhist") 
                
    )
  )
))
