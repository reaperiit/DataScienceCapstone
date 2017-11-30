library(shiny)
source("model.R")

server <- function(input, output, session) {
  
  output$text <- renderText({
    paste("Input text :", input$text)
  })
  
  observe({
    iniTime <- Sys.time()
    
    textCleansed <- clean(input$text)
    if(textCleansed != " ") 
    {
      output$cleaned <- renderText({
        paste0("Processed Text: [",textCleansed,"]")
      })
      
      textCleansed <- gsub(" \\* "," ",textCleansed)    
      predictWords <- predict_model(textCleansed)
      updateSelectInput(session = session, inputId = "predicts", choices = predictWords)
      
      endTime <- Sys.time()
      output$msg <- renderText({
        paste(msg, "\n", sprintf("$$ Time took to run = %5.2f milliSeconds $$",1000*(endTime-iniTime)))
      })
      gc()
    }  
  })
}

