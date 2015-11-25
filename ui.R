
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Demonstration of shiny widgets..."),

  # Sidebar with widget demonstration
  sidebarLayout(
    sidebarPanel(("Enter the personal Information"),
                 textInput("name", "Enter your name", ""),
                 textInput("age", "Enter your age", ""),
                 radioButtons("gender","Select the gender", list("Male","Female"), ""),
                 sliderInput("slide", "Select a value from slider", min=0, max=10, value=5, 
                             animate=T, step=0.1 ),
                 selectInput("statenames", "Slect the State", c("California", "Florida", 
                              "Texas", "New York", "Arizona"), selected="Texas", 
                              selectize=T, multiple=F)
                 ),

    
    mainPanel(("Personal Information"),
                 textOutput("myname"),
                 textOutput("myage"),
                 textOutput("mygender"),
                 textOutput("myslide"),
                 textOutput("mystate")
              )
  )
))
