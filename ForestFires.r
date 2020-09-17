filename <- "ForestFires.csv"
fileURL <- "http://archive.ics.uci.edu/ml/machine-learning-databases/forest-fires/forestfires.csv"
if (!file.exists(filename)){
        download.file(fileURL, filename, method = "curl")
}
FireData <- read.csv(filename, sep = ",", header = TRUE)

library(plotly)
fig1 <- plot_ly(FireData, x = ~temp, y = ~area)
fig1 <- fig1 %>% add_lines(name = ~"temperature vs. burned area") ##%>% 
        ##layout(yaxis = list(type = "log"))
fig2 <- plot_ly(FireData, x = ~wind, y = ~area)
fig2 <- fig2 %>% add_lines(name = ~"wind vs. burned area") ##%>% 
        ##layout(yaxis = list(type = "log"))
fig3 <- plot_ly(FireData, x = ~RH, y = ~area)
fig3 <- fig3 %>% add_lines(name = ~"humidity vs. burned area") ##%>% 
##layout(yaxis = list(type = "log"))
fig <- subplot(fig1, fig2, fig3)

fig

map <- plot_ly(x = FireData$X, y = FireData$Y, type = "scatter")
map