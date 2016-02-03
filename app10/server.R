# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  datasetInput <- reactive({
    switch(input$dataset,
           "iris" = iris,
           "mtcars" = mtcars,
           "trees" = trees
      )
  })
  
  fileext <- reactive({
    switch(input$type,
           "Excel(CSV)"= "csv",
           "Text(TSV)" = "txt",
           "Text(Space separated)" = "txt",
           "Doc" = "doc"
      )
    
  })
  
  output$table <- renderTable({
    datasetInput()
  })
  
  
  output$downloadData <- downloadHandler(
    
    filename = function(){
      paste(input$dataset,fileext(),sep=".")
    },
    
    content=function(file) {
      sep <- switch(input$type,
                "Excel(CSV)"= ",",
                "Text(TSV)" = "\t",
                "Text(Space separated)" = " ",
                "Doc" = " ")
      write.table(datasetInput(), file, sep=sep, row.names=F)
    }
    
    )
  
})
