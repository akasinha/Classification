library(shiny)
shinyUI(fluidPage(
    titlePanel("Gear calculator"),
    
    sidebarLayout(
        sidebarPanel(
            numericInput("box1", "Teeth of pinion", value = 100, min=1, step=1),
            numericInput("box2", "Teeth of Gear", value =10, min=1, step=1),
            numericInput("box3", "speed of pinion in m/s", value = 50, min=1, step=1),
            submitButton("Submit"),
        ),
        mainPanel(
            h4('Gear'),
            textOutput("Return"),
            textOutput("Return1")
        )
    )
))