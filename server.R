#
# Shiny App Server.
#
# This application will plot the various variables from the IRIS 
# Data set against each other.

shinyServer(function(input, output, session) {
  #
  # Plot the iris parameters against each other.
  #
  output$iris_plot <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(x=iris[[input$xname]], y=iris[[input$yname]], pch = 20, cex = 3)
  })
  
})