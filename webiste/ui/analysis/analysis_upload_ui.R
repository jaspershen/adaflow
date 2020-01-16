# dc.upload.ui <- function(){
  fluidPage(
    # headerPanel(title = "Upload data"),
    column(width = 4,
           wellPanel(
             textInput(inputId = "analysis_project_id",
                       label = h5(
                         "Project Name",
                         shinyBS::tipify(
                           el = icon(name = "info-circle"),
                           placement = "bottom",
                           trigger = "hover",
                           title = "Please text your project name"
                         )
                       ),
                       value = "",
                       placeholder = "Project name"
                       ),
             #Phenotype table
             fileInput(
               inputId = "analysis_phenotype_table",
               label = h5(
                 "Phenotype Table",
                 shinyBS::tipify(
                   el = icon(name = "info-circle"),
                   placement = "bottom",
                   trigger = "hover",
                   title = "Phenotype Table"
                 )
               ),
               multiple = FALSE,
               accept = c("txt/csv", "text/comma-separated-values,text/plain", ".csv"),
               buttonLabel = "Browser"
             ),
             
             #Variable table
             fileInput(
               inputId = "analysis_variable_table",
               label = h5(
                 "Variable Table",
                 shinyBS::tipify(
                   el = icon(name = "info-circle"),
                   placement = "bottom",
                   trigger = "hover",
                   title = "Variable Table"
                 )
               ),
               multiple = FALSE,
               accept = c("txt/csv", "text/comma-separated-values,text/plain", ".csv"),
               buttonLabel = "Browser"
             ),

             #Expression table
             fileInput(
               inputId = "analysis_expression_table",
               label = h5(
                 "Expresson Table",
                 shinyBS::tipify(
                   el = icon(name = "info-circle"),
                   placement = "bottom",
                   trigger = "hover",
                   title = "Expresson Table"
                 )
               ),
               multiple = FALSE,
               accept = c("txt/csv", "text/comma-separated-values,text/plain", ".csv"),
               buttonLabel = "Browser"
             ),

             checkboxInput(inputId = "analysis_use_demo_data",
                           label = "Use Demo Data", value = FALSE),

             shinyalert::useShinyalert(),
               actionButton(
                 inputId = 'analysis_upload_button',
                 label = "Upload",
                 styleclass = "info",
                 # class = "btn-primary",
                 icon = icon('play-circle')
               ),
             hr(),
             helpText(
               a(
                 "Click Here to Download Demo data",
                 href = "http://oxr5qv74w.bkt.cloudmi.com/Data_normalization.zip",
                 target = "_blank"
               )
             )

           )
    ),

    column(width = 7,
             includeHTML(path = "data/html/introduction_analysis_data_upload.html"),
           br(), br(), br()
    )

  )
# }