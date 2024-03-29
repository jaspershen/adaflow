
fluidPage(
  # shinysky::busyIndicator(text = "In progressing..."),
  shinyjs::useShinyjs(),
  span(textOutput(outputId = "paGenerateReport.message"), style = "color:red"),
  shinysky::actionButton(inputId = "pa.generate.analysis.report",
                         label = "Generate HMTL Summary", styleclass = "warning"),
  downloadButton(outputId = "pa.report.download", "Download HMTL Summary"),
  helpText("Please click", strong("Generate HMTL Summary"),
           "to generate analysis report, then click",
           strong("Download HMTL Summary"), "to download."),
  br(),br(),
  hr(style = "border-color:red;"),
  # shinysky::busyIndicator(text = "In progressing..."),
  shinyjs::useShinyjs(),
  span(textOutput(outputId = "paGenerateResult.message"), style = "color:red"),
  shinysky::actionButton(inputId = "pa.generate.analysis.result",
                         label = "Generate Analysis Result", styleclass = "info"),
  downloadButton(outputId = "pa.result.download", "Download Analysis Result"),
  helpText("Please click", strong("Generate Analysis Result"),
           "to generate analysis result, then click",
           strong("Download Analysis Result"),
           "to download."),
  br(), br(), br()
)
