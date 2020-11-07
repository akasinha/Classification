library(shiny)
shinyServer(function(input, output) {
    
    formula <- reactive({
        t1 <- input$box1
        t2 <- input$box2
        s1 <- input$box3
        round(((t1*s1)/t2),digits=5)
    })
    formula1 <- reactive({
        t1 <- input$box1
        t2 <- input$box2
        s1 <- input$box3
        (t2/t1)
    })
    
    output$Return <- renderText({
        paste("Speed of Gear is: ", formula(),"m/s")
    })
    output$Return1 <- renderText({
        paste("Gear ratio is: ", formula1())
    })
    
})