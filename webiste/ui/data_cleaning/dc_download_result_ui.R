
fluidPage(
      # shinysky::busyIndicator(text = "In progressing..."),
      shinyjs::useShinyjs(),
      span(textOutput(outputId = "Analysis.Report.of.Data.Cleaning.message"), style = "color:red"),
      shinysky::actionButton(inputId = "dc.generate.analysis.report",
                             label = "Generate HTML Summary", styleclass = "warning"),
      shinyjs::useShinyjs(),
      downloadButton(outputId = "dc.report.download", "Download HTML Summary"),
      helpText("Please click", strong("Generate HTML Summary"),
               "to generate analysis report, then click",
               strong("Download HTML Summary"), "to download."),
      br(),br(),
      hr(style = "border-color:red;"),
      # shinysky::busyIndicator(text = "In progressing..."),
      shinyjs::useShinyjs(),
      span(textOutput(outputId = "Data.Cleaning.Result.message"), style = "color:red"),
      shinysky::actionButton(inputId = "dc.generate.analysis.result",
                             label = "Generate Analysis Result", styleclass = "info"),
      downloadButton(outputId = "dc.result.download", "Download Analysis Result"),
      helpText("Please click", strong("Generate Analysis Result"),
               "to generate analysis result, then click",
               strong("Download Analysis Result"),
               "to download."),
  br(), br(), br()
)
