# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("This is my first shiny App - Hello Shiny"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(position="right",
    sidebarPanel(h3("This is the sidebar pannel"), h4("widget4"), h5("widget5")),

    # Show a plot of the generated distribution
    mainPanel(h4("This is the main pannel text, output is displayed here!"), 
              h5("This is the output 5"))
  )
))
