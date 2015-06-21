library(shiny)
helpText("Note: This application use number slider from 1:10",
"Output 3 simple algorithm:a;a+5 and a+5+10",
"and use reactive function to do it.")
# Define UI for application that calculate a simple slider number
shinyUI(pageWithSidebar(headerPanel("Developing ShinyApp!"),
        
        # Sidebar with a slider input for the number of consideration
        sidebarPanel(
                     sliderInput("a",
                                    "Numbers",
                                    min = 1,
                                    max = 10,
                                    value = 10)
                ),
                
        # Output 3 simple caculations    
        mainPanel(p('OUTPUT'), p('OUTPUTa'),textOutput('x1'),
                  p('OUTPUTa+5'), textOutput('x2'),
                  p('OUTPUTa+5+10'), textOutput('x3')
                
                )
        ))

