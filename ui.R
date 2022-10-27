#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(shinydashboardPlus)



# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
  
   titlePanel( h1("Data Science Capstone: Predicting Words", align = "center"),windowTitle = " DSC:Predicting Words "),
   tags$style(HTML("
    body {
            background-color: aliceblue;
            color: black;
            }")), 

    sidebarLayout(
      sidebarPanel(
        helpText("Enter a sentence"),
        textInput("input_text", "Sentence:",value = "last"),
        tags$style(type="text/css", "#input_text {color : red;}"),
        
        h5('Instructions'),
        
        helpText("This application guess the next word you input."),
        helpText("Natural Language Processing (NLP) algorithms were used to carry out this application, 
                 fed by data extracted from blogs, news, and Twitter. We use N-grams which are continuous 
                 sequences of words in a document, to predict the next words")
      ),
      
      
        mainPanel(
          h1("Word Prediction"),
     
          verbatimTextOutput("Guessing..."),
          h3(strong(code(textOutput('next_word')))),
          br(),
          br(),
          h4(tags$b('Bi-gram:')),
          textOutput('bigram'),
          tags$head(tags$style("#bigram{color: blue;
                                 font-size: 20px;
                                 font-style: italic;
                                 }"
          )
          ),
          br(),
          h4(tags$b('Tri-gram:')),
          textOutput('trigram'),
          tags$head(tags$style("#trigram{color: green;
                                 font-size: 20px;
                                 font-style: italic;
                                 }"
          )
          ),
          br(),
          h4(tags$b('Quad-gram:')),
          textOutput('quagram'),
          tags$head(tags$style("#quagram{color: red;
                                 font-size: 20px;
                                 font-style: italic;
                                 }"
          )
          )
        )
    )
))
