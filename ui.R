fluidPage(
  # Application title
  titlePanel("Word Cloud - Presidential Election Speeches and Remarks"),
  strong("App Description:"),
  p("This app generates the word cloud from the Clinton and Trump speeches during 2016 presidential election."),
  strong("Data Sources:"),  
  p(" http://www.thegrammarlab.com/?nor-portfolio=corpus-of-presidential-speeches-cops-and-a-clintontrump-corpus"),
  p(" http://www.presidency.ucsb.edu/data.php"),
  p(" "),
  strong("Instructions:"),
  p("Choose a candidate - Select Clinton or Trump from the drop down input box."),
  p("Click the Submit button to display the results."),
  
  sidebarLayout(
    # Sidebar with a slider and selection inputs
    sidebarPanel(
      selectInput("selection", "Choose a candidate:",
                  choices = books),
      actionButton("update", "Submit", icon = icon("play-circle"),
                   class = "btn action-button",
                   style = "color: white;
                   background-color: #80ced6"),
      hr(),
      sliderInput("freq",
                  "Word Minimum Frequency:",
                  min = 1,  max = 500, value = 100),
      sliderInput("max",
                  "Maximum Number of Words:",
                  min = 1,  max = 500,  value = 250),
      p("Use the slider to change the value")
      
    ),
    
    # Show Word Cloud
    mainPanel(
      plotOutput("plot")
    )
  )
)