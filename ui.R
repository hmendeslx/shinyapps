
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel(title = h2("Demonstration of renderPlot() - a histogram", align="center")),

  # Sidebar Panel
  sidebarLayout(
    sidebarPanel( #("Enter the personal Information"),
                 
                 selectInput("var", "1. Select the variable from iris dataset", 
                             choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, 
                                         "Petal.Width" = 4), selected=1), #selectize=T, multiple=F
                 br(),
                 sliderInput("bins", "2. Select the number of BINs for histogram", min=5, max=25, 
                             value=15), # animate=T, step=0.1 
                 br(),
                 radioButtons("color","3. Select the colour of histogram", 
                              list("Green","Red", "Yellow"), selected="Green")
                 
                 ## From older code
                 #textInput("name", "Enter your name", ""),
                 #textInput("age", "Enter your age", ""),
                 #selectInput("statenames", "Slect the State", c("California", "Florida", 
                 #              "Texas", "New York", "Arizona"), selected="Texas", 
                 #             selectize=T, multiple=F)
                 
                 ),

    
    mainPanel(
      
        plotOutput("myhist")
                 
        #textOutput("myname"),
        #textOutput("myage"),
        #textOutput("mygender"),
        #textOutput("myslide"),
        #textOutput("mystate")
              )
  )
))
