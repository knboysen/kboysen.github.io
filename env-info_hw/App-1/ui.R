shinyUI(fluidPage(
  titlePanel("Kristen's Shiny App"),
  
  sidebarLayout(position = "right",
                sidebarPanel(h3("Sidebar!"), 
                             textOutput("text1")),
                mainPanel(
                           h1("Week 8 Homework"),
                           h4("Environmental Informatics",  style = "color:purple"),
                           p(strong(("Kristen Boysen, MESM"))),
                           br(),
                           p("This is my shiny app I created while following the Shiny Tutorial. The tutorial is available", a("here.", 
          href = "http://shiny.rstudio.com/tutorial/lesson1/")), 
          br(),
          
          radioButtons("checkGroup", 
                             label = h3("Group of Berry Boxes"), 
                             choices = list("Strawberry" = "strawberries", 
                                            "Raspberry" = "raspberries", 
                                            "Blueberry" = "blueberries")), 
          br(),
          br(), 
          
          helpText("Create demographic maps with 
        information from the 2010 US Census."),
          selectInput("var", 
                      label = "Choose a variable to display",
                      choices = c("Percent White", "Percent Black", "Percent Hispanic", "Percent Asian"),
                      selected = "Percent Asian"),
          sliderInput("range", 
                      label = "Range of interest:",
                      min = 0, max = 100, value = c(0, 100)),
          plotOutput("map"))
          )))
