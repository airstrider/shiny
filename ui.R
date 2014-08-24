library(shiny)

shinyUI(fluidPage(
  titlePanel("Compound vs. Simple Interest"),
  sidebarLayout(
    sidebarPanel(
      h4('Input'),
      numericInput("amt", "Principal ($):", 50000, step=1000),
      sliderInput("rate", "Interest rate(%):", min=2, max=5, value=2.5, step=0.5),
      #numericInput("rate", "Interest rate(%) (up to 5):", 2.5, min=2, max=5, step=0.5),
      numericInput("year", "Maturity (year) (up to 10)", 2, min=1, max=10, step=1)
    ),
    
    mainPanel(
      h4('Output'),
      h5('[1] Total amount in the compound interest ($)'),
      verbatimTextOutput("prediction_C"),
      p('Formula: principal * ((1 + interest rate) ^ maturity)', style="color:blue"),
      br(),
      h5('[2] Total amount int the simple interest ($)'),
      verbatimTextOutput("prediction_S"),
      p('Formula: principal * (1 + (interest rate * maturity))', style="color:blue"),
      br(),
      h5('[3] The difference of the amounts ($) ( [1] - [2] )'),
      verbatimTextOutput("comparison"),
      br(),
      p('Which one is your choice?', style="color:red")
    )
  )
))