
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Demonstration of sliderInput widget in shiny"),

  # 
  sidebarLayout(
    sidebarPanel(h4("Enter the personal information"),
      sliderInput("slide", "Select the value from Slider", min = 0,
                  max = 5, value = 2, animate = T, step=0.2)             
                
    ),
    mainPanel(h4("Personal Information"),
                textOutput("out")          
                
                
    )
  )
))
