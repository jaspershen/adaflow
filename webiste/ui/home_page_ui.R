home_page_ui <- function(){
  # tagList(
    fluidPage(
      sidebarLayout(sidebarPanel = sidebarPanel(
        tags$style(".well {background-color: white;}"),
        textOutput(outputId = "time"),
        br(),
        textOutput(outputId = "user.num"),
        br(),
        textOutput(outputId = "job.num"),
        hr(),
        shiny::h1("News", align = "left", style = "color:black"),
        ##version 1.2
        h5("Version 0.0.1 (2020.01.09)", align = "left"
           # style="font-weight: normal;line-height:20px;BACKGROUND-COLOR:yellow"
        ),
        # h5("The second release verson.", align = "justify"
        #    # style="font-weight: normal;line-height:20px;BACKGROUND-COLOR:yellow"
        # ),
        actionButton(inputId = "version0_0_1Go", styleclass = "info",
                     size = "mini",
                     icon = icon("angle-double-right"),
                     label = "More"
        ),

        bsModal(id = "version0_0_1",
                title = "Information of Version 0.0.1",
                trigger = "version0_0_1Go",
                size = "large",
                fluidPage(
                  includeMarkdown(path = "./data/markdown/info.v1.2.Rmd")
                )
        )
      ),
      mainPanel = mainPanel(
        includeMarkdown(path = "./data/markdown/metflow_introduction/metflow_introduction.Rmd")
        # br(), br(), br()
                            ),
      position = "right"
      )
    )
  # )
}