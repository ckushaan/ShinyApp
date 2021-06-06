## Shiny Application and Reproducible Pitch

This peer assessed assignment has two parts. First, you will create a Shiny application and deploy it on Rstudio's servers. Second, you will use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about your application.

## Shiny Application

1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
2. Deploy the application on Rstudio's shiny server
3. Share the application link by pasting it into the provided text box
4. Share your server.R and ui.R code on githu

### The application must include the following:

1. Some form of input (widget: textbox, radio button, checkbox, ...)
2. Some operation on the ui input in sever.R
3. Some reactive output displayed as a result of server calculations
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself. Do not post to an external link.

**[App Link Here](https://kushsarathchandra.shinyapps.io/BMIShinyApp/)**

## Pitch Presentation

5 slides (inclusive of the title slide)  to pitch a your app. You're going to create a web page using Slidify or Rstudio Presenter with an html5 slide deck.

Here's what you need

1. 5 slides to pitch our idea done in Slidify or Rstudio Presenter
2. Your presentation pushed to github or Rpubs
3. A link to your github or Rpubs presentation pasted into the provided text box

### Your presentation must satisfy the following

1. It must be done in Slidify or Rstudio Presenter
2. It must be 5 pages
3. It must be hosted on github or Rpubs
4. It must contained some embedded R code that gets run when slidifying the document


**[Presentation Link Here](https://ckushaan.github.io/ShinyApp/SlidyPres.html)**

### BMI Computation
``` 
    observe({
        input$action_Calc
        if(input$select_measure==1) {
            values$bmi <- isolate({
               input$num_weight / ((input$num_height/100) *(input$num_height/100)) })
        } else  {
            values$bmi <- isolate({
                input$num_weight / (input$num_height *input$num_height)*703 })}})
```
