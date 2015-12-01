# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
  output$str <- renderPrint({
    str(iris)
  })
  
  output$sumry <- renderPrint({
    summary(iris)
  })
  

  output$data <- renderTable({
    column <- as.numeric(input$var)
    iris[column]
    #head(iris)
  })
  
  output$myhist <- renderPlot({
    column <- as.numeric(input$var)
    hist(iris[,column], breaks=seq(0, max(iris[,column]), l=input$bins+1), col=input$color,
         main="Histogram of iris dataset", xlab=names(iris[column]))
  })
  
  ## Older code
  #output$myname <- renderText(input$name)
  #output$myage <- renderText(input$age)
  #output$mygender <- renderText(input$gender)
  #output$myslide <- renderText(
  #paste("Slide Value Selected = ",input$slide) )
  #output$mystate <- renderText(input$statenames)
  
  
#   output$distPlot <- renderPlot({
# 
#     # generate bins based on input$bins from ui.R
#     x    <- faithful[, 2]
#     bins <- seq(min(x), max(x), length.out = input$bins + 1)
# 
#     # draw the histogram with the specified number of bins
#     hist(x, breaks = bins, col = 'darkgray', border = 'white')
# 
#   })

})
