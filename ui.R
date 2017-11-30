ui <- fluidPage(
  titlePanel("Next Word Prediction App"),
  sidebarLayout(
    sidebarPanel(
      p("Input a word or text and click \"Predict\" to see the next word(s) suggestions:"),	
      textInput(inputId="text", label = ""),
      submitButton("Predict"),
      HTML('<script type="text/javascript"> 
           document.getElementById("text").focus();
           </script>')
      ),
    
    mainPanel(
      tabsetPanel(
        
        tabPanel("Result", 
                 conditionalPanel(condition = "input.text != ''",
                                  verbatimTextOutput("text"),
                                  verbatimTextOutput("cleaned"), verbatimTextOutput("msg"),
                                  selectInput("predicts","Possible next words:",choices=c(""))
                 )
        )
      )
    )
      )
  
  )
