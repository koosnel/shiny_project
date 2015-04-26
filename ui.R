#
# Shiny App User interface.
#
# This application will plot the various variables from the IRIS 
# Data set against each other.
#
shinyUI(pageWithSidebar(
  headerPanel('Plot IRIS data.'),
  sidebarPanel(
    p("This application plot the various variables from the 
      IRIS data set against each other"),
    p("Please select the X and Y variables, below:"),
    selectInput('xname', 'X Variable', names(iris)),
    selectInput('yname', 'Y Variable', names(iris),
                selected=names(iris)[[2]])
  ),
  mainPanel(
    plotOutput('iris_plot')
  )
))