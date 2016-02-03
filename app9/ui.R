
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel(title = h2("Download base plot in shiny - an example", align ="center")),

  # 
  sidebarLayout(
    sidebarPanel(
      
       selectInput("var", "1.Select the variable from Iris Database", c("Sepal.Length" = 1,
                  "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4)),
       
       br(),
       
       sliderInput("bins", "2.Select the number of BINs for histogram", min=5, max=50, value=25),
       
       br(),
       
       radioButtons("color", "3.Select the colour of the hostogram", 
                    choices=c("Green", "Red", "Yellow"), selected="Green"),
       
       br(),
       
       selectInput(inputId = "var1", label="Select X variable", choices=c("Sepal.Length" = 1,
                   "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4 )),
       
       br(),
       
       selectInput(inputId = "var2", label="Select Y variable", choices=c("Sepal.Length" = 1,
                   "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4 ), 
                   selected="Sepal.Width"),
       
       br(),
       
       radioButtons(inputId = "var3", label="Select the file type", choices=list("png","pdf"))
                
    ),
    mainPanel(
        
      textOutput("text1"),
      textOutput("text2"),
      textOutput("text3"),
      plotOutput("myhist"),
      plotOutput("plot"),
      downloadButton(outputId = "down", label = "Download the plot")
                
    )
  )
))
