compound   <- function(amt, rate, year) amt*(1+(rate/100))^year
simple     <- function(amt, rate, year) amt*(1+(rate/100*year))
comparison <- function(output) compound - simple

shinyServer(function(input, output) {
 output$prediction_C <- renderPrint({round(compound(input$amt, input$rate, input$year),2)})
 output$prediction_S <- renderPrint({simple(input$amt, input$rate, input$year)})
 output$comparison   <- renderPrint({round((compound(input$amt, input$rate, input$year)-simple(input$amt, input$rate, input$year)),2)})
})