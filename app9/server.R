# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  colm <- reactive({
    as.numeric(input$var)
  }) 
    
  x <- reactive({
    iris[,as.numeric(input$var1)]
  }) 
  
  y <- reactive({
    iris[,as.numeric(input$var2)]
  }) 
  
  
  output$text1 <- renderText({
    paste("Data Set Variable Name: ", names(iris[colm()]))
  })
  
  output$text2 <- renderText({
    paste("Number of bins: ", input$bins)
  })
  
  output$text3 <- renderText({
    paste("Colour of histogram: ", input$color)
  })
    
  output$myhist <- renderPlot({
    hist(iris[,colm()], breaks = seq( min( iris[,colm()]) , max( iris[,colm()]), l=input$bins+1 ), 
         col=input$color, main="Histogram of Iris Dataset", xlab=names(iris[colm()])) 
  })
  
  output$plot <- renderPlot({
    plot(x(),y())
  }) 
  
  output$down <- downloadHandler(
    # Specify the file name
    filename= function(){
      #iris.png
      #iris.pdf
      paste("iris",input$var3,sep=".")
    },
    content= function(file){
      # open the device -> png() or pdf()
      # create the plot
      # close the device
      if(input$var3=="png")
        png(file)
      else
        pdf(file)      
      plot(x(),y())
      dev.off()
    }  
    )
    
})
