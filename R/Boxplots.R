library(plotly)

res <- as.data.frame(read.csv("C:/Users/user/Desktop/FinalResults/METHODOLOGY IMPLEMENTATION/GraphHypovolemia1.csv"))

plot_ly(res, x = ~Type, y = ~Youden, color = ~Algorithm.Type, type = "box") %>%
   layout(boxmode = "group", title = "Hypovolemia 1 - Model's performances in cases of missing parameters")

res <- as.data.frame(read.csv("C:/Users/user/Desktop/FinalResults/METHODOLOGY IMPLEMENTATION/GraphHypovolemia2.csv"))

plot_ly(res, x = ~Type, y = ~Youden, color = ~Algorithm.Type, type = "box") %>%
  layout(boxmode = "group", title = "Hypovolemia 2 - Model's performances in cases of missing parameters")

res <- as.data.frame(read.csv("C:/Users/user/Desktop/FinalResults/METHODOLOGY IMPLEMENTATION/GraphAgitation1.csv"))

plot_ly(res, x = ~Type, y = ~Youden, color = ~Algorithm.Type, type = "box") %>%
  layout(boxmode = "group", title = "Agitation 1 - Model's performances in cases of missing parameters")

res <- as.data.frame(read.csv("C:/Users/user/Desktop/FinalResults/METHODOLOGY IMPLEMENTATION/GraphAgitation2.csv"))

plot_ly(res, x = ~Type, y = ~Youden, color = ~Algorithm.Type, type = "box") %>%
  layout(boxmode = "group", title = "Agitation 2 - Model's performances in cases of missing parameters")

res <- as.data.frame(read.csv("C:/Users/user/Desktop/FinalResults/METHODOLOGY IMPLEMENTATION/GraphBradycardia.csv"))

plot_ly(res, x = ~Type, y = ~Youden, color = ~Algorithm.Type, type = "box") %>%
  layout(boxmode = "group", title = "Bradycardia - Model's performances in cases of missing parameters")

res <- as.data.frame(read.csv("C:/Users/user/Desktop/FinalResults/METHODOLOGY IMPLEMENTATION/GraphBradycardiaHypotension.csv"))

plot_ly(res, x = ~Type, y = ~Youden, color = ~Algorithm.Type, type = "box") %>%
  layout(boxmode = "group", title = "Bradycardia Hypotension - Model's performances in cases of missing parameters")

res <- as.data.frame(read.csv("C:/Users/user/Desktop/FinalResults/METHODOLOGY IMPLEMENTATION/GraphTachycardiaHypotension.csv"))

plot_ly(res, x = ~Type, y = ~Youden, color = ~Algorithm.Type, type = "box") %>%
  layout(boxmode = "group", title = "Tachycardia Hypotension - Model's performances in cases of missing parameters")

res <- as.data.frame(read.csv("C:/Users/user/Desktop/FinalResults/METHODOLOGY IMPLEMENTATION/GraphTachycardia.csv"))

plot_ly(res, x = ~Type, y = ~Youden, color = ~Algorithm.Type, type = "box") %>%
  layout(boxmode = "group", title = "Tachycardia - Model's performances in cases of missing parameters")

res <- as.data.frame(read.csv("C:/Users/user/Desktop/FinalResults/METHODOLOGY IMPLEMENTATION/GraphLvShock1.csv"))

plot_ly(res, x = ~Type, y = ~Youden, color = ~Algorithm.Type, type = "box") %>%
  layout(boxmode = "group", title = "Lv Shock 1 - Model's performances in cases of missing parameters")

res <- as.data.frame(read.csv("C:/Users/user/Desktop/FinalResults/METHODOLOGY IMPLEMENTATION/GraphLvShock2.csv"))

plot_ly(res, x = ~Type, y = ~Youden, color = ~Algorithm.Type, type = "box") %>%
  layout(boxmode = "group", title = "Lv Shock 2 - Model's performances in cases of missing parameters")



