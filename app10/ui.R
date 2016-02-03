
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel(title = h2("Demonstration of flie download using downloadbutton() and downloadHandler()", align ="center")),

  # 
  sidebarLayout(
    sidebarPanel(
      
      selectInput("dataset", "Select the dataset", choices = c("iris", "mtcars","trees")),
      br(),
      helpText("Select the download format"),
      radioButtons("type", "Format type:", choices=c("Excel(CSV)", "Text(TSV)", 
                    "Text(Space separated)", "Doc")),
      br(),
      helpText("Click on the download button to download the dataset observations"), 
      downloadButton("downloadData", "Download")
                
    ),
    mainPanel(
        
      tableOutput("table")
                
    )
  )
))
