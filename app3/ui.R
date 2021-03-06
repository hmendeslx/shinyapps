
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Demonstration of shiny widgets"),

  # 
  sidebarLayout(
    sidebarPanel(h4("Enter the personal information"),
                textInput("name", "Enter your name", ""),
                textInput("age", "Enter your age", ""),
                radioButtons("gender", "Select your gender", list("Male", "Female"), "")
                
    ),
    mainPanel(h4("Personal Information"),
                textOutput("myname"),          
                textOutput("myage"),
                textOutput("mygender")
                
    )
  )
))
