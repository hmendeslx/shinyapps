# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
  column <- reactive({
    as.numeric(input$var)
  })
  
  output$str <- renderPrint({
    str(iris)
  })
  
  output$sumry <- renderPrint({
    summary(iris)
  })
  

  output$data <- renderTable({
    iris[column()]
    #head(iris)
  })
  
  output$myhist <- renderPlot({
    #column <- as.numeric(input$var)
    hist(iris[,column()], breaks=seq(0, max(iris[,column()]), l=input$bins+1), col=input$color,
         main="Histogram of iris dataset", xlab=names(iris[column()]))
  })
  


})
