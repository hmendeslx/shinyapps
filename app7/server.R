
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$myhist <- renderPlot({
    colm <- as.numeric(input$var)
    hist(iris[,colm], breaks = seq( min( iris[,colm]) , max( iris[,colm]), l=input$bins+1 ), col=input$color,
         main="Histogram of Iris Dataset", xlab=names(iris[colm]))
    
  })
   
    
})
