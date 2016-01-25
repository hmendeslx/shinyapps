
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Demonstration of the selectInput UI widget in shiny"),

  # 
  sidebarLayout(
    sidebarPanel(h4("Enter the personal information"),
      
      selectInput("statenames", "Select the state", c("California","Florida", "Texas", 
                      "New York", "Arizona"), selected="Texas", multiple = F, selectize = T)
                
    ),
    mainPanel(h4("Personal Information"),
              
       textOutput("state")         
                
    )
  )
))
