
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Demonstration of textInput widget in shiny"),

  # 
  sidebarLayout(
    sidebarPanel("Enter the personal information"),
    mainPanel("Personal Information")
  )
))
