 
# Load the package
library(shiny)

# Define UI for application
ui <- fluidPage(
   titlePanel("Compound interest is great (e.g., investment) and horrible (e.g., debt)!"),
   sidebarLayout(
      sidebarPanel(
         numericInput("principal",
                     "Enter the amount of the original investment or debt:",
                     min = 1,
                     max = 100000,
                     value = 1000),
         sliderInput("time",
                     "Enter the length of the investment/debt in years:",
                     min = 1,
                     max = 30,
                     value = 10),
         radioButtons("rate",
                      "Select the rate of interest for the investment/debt:",
                      c("4.0%" = "0.040",
                        "5.0%" = "0.05",
                        "6.0%" = "0.06",
                        "7.0%" = "0.07",
                        "8.0%" = "0.08",
                        "9.0%" = "0.09",
                        "10.0%" = "0.10")),
         radioButtons("freq",
                      "Select the frequency of compounding for interest:",
                      c("Monthly" = "12",
                        "Annually" = "1"))
      ),
      # Show a plot of the calculations
      mainPanel(
         textOutput("amassed"),
         textOutput("net")
      )
   )
)

# Define server logic required for output
server <- function(input, output) {
   output$amassed <- renderPrint({
      # generate returns based on inputs from ui.R
      amount <- input$principal*(1 + as.numeric(input$rate)/as.numeric(input$freq))^(as.numeric(input$freq)*input$time)
      print("Amassed wealth/debt: $"); amount
   })
   output$net <- renderPrint({
     amount <- input$principal*(1 + as.numeric(input$rate)/as.numeric(input$freq))^(as.numeric(input$freq)*input$time)
     net <- amount - input$principal
     print("Net growth of wealth/debt: $"); net
   })

}

# Run the application 
shinyApp(ui = ui, server = server)

