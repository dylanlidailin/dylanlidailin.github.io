library(shiny)
library(markdown)

ui <- fluidPage(
  titlePanel("Charlottesville Bus System"),
  sidebarLayout(
    sidebarPanel(
      h3("Interactive Data Analysis")
      # Add UI elements like sliders or inputs here
    ),
    mainPanel(
      # Place your content from R Markdown here
      includeMarkdown("Midterm_report.rmd")  # Show the rendered Rmd content
    )
  )
)

server <- function(input, output) {
  # Add server-side logic here if you want interactivity, such as dynamic charts or tables.
}

shinyApp(ui = ui, server = server)
