library(shiny)

shinyUI(fluidPage(
    

    titlePanel(h1("Check your BMI value", align = "center")),
    sidebarLayout(
        sidebarPanel(
            helpText("Enter your weight and height below"),  
            selectInput("select_measure", label = h6("Select the units"), choices = list("Kg & Cm" = 1, "Lb & Inches" = 703), selected = 1),
            numericInput("num_weight", label = h6("Enter your weight"),min = 1, value = NULL),
            numericInput("num_height", label = h6("Enter your height"),min = 1, value = NULL),
            actionButton("action_Calc", label = "Show Me")        
        ),
        mainPanel(
            tabsetPanel(
                tabPanel("Your BMI Value",
                         p(h5("Here is where your BMI is at: ")),
                         textOutput("text_weight"),
                         textOutput("text_height"),
                         
                         p(h5("")),
                         textOutput("text_bmi"),
                ),
                tabPanel("BMI Category",
                         p(h4("How HMI Categorises:")),
                         helpText("Categories according to WHO"),
                         HTML("
                      <b> Less than 15 </b> = Very Severly Underweight <br>
                      <b> 15 to 16 </b> = Severly Underweight <br>
                      <b> 16 to 18.5 </b> = Underweight <br>
                      <b> 18 to 25 </b> = Healthy Weight <br>
                      <b> 25 to 30 </b> = Overweight <br>
                      <b> 30 to 35 </b> = Moderately Overweight <br>
                      <b> 35 to 40 </b> = Severely Overweight <br>
                      <b> Above 40 </b> = Very Severely Overweight <br>")                
                ),
                tabPanel("Better Health",
                         p(h4("Better Health Channel")),
                         helpText("It is normal for your body to store energy as fat. However, "),
                         helpText("too much or too little body fat can increase your risk of illness and disease, depending on where ...."),
                         helpText("click below for more info"),
                         HTML("
                        <a href=https://www.betterhealth.vic.gov.au/health/HealthyLiving/body-mass-index-bmi>
                              <img src=https://content.dhhs.vic.gov.au/sites/default/files/site_logo/logo.png></a>")
                )         
            )
        )
    )
))