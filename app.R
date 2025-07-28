library(shiny)

# Read the data
data <- read.csv("data.csv", stringsAsFactors = FALSE)

# Define UI
ui <- fluidPage(
  titlePanel("Hospital Patient Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("department", 
                  "Select Department:",
                  choices = c("All", unique(data$department)),
                  selected = "All")
    ),
    
    mainPanel(
      plotOutput("charges_plot")
    )
  )
)

# Define server logic
server <- function(input, output) {
  
  # Reactive data filtering
  filtered_data <- reactive({
    if (input$department == "All") {
      return(data)
    } else {
      return(data[data$department == input$department, ])
    }
  })
  
  # Charges plot
  output$charges_plot <- renderPlot({
    df <- filtered_data()
    hist(df$total_charges, 
         main = paste("Total Charges Distribution -", input$department),
         xlab = "Total Charges ($)",
         ylab = "Frequency",
         col = "lightblue",
         border = "black")
  })
}

# Run the application
shinyApp(ui = ui, server = server)