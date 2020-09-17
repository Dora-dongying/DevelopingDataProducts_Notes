library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Data scien FTW!"),
        sidebarPanel(
                h3('Sidebar text')
        ),
        mainPanel(
                h3('Main Panel text')
        )
))
shinyApp(ui = ui, server = server)