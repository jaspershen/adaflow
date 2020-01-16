

###data cleaning UI
analysis_ui <- function(){
  fluidPage(
    navlistPanel(id = "analysis_tab",
                 # title = "Analysis",
                 fluid = TRUE, 
                 well = TRUE,
                 widths = c(3, 9), 
                 selected = "analysis_upload",
                 ##upload data
                 tabPanel(value = "analysis_upload",
                          title = "Upload Data",
                          icon = shiny::icon("upload"),
                          source("ui/analysis/analysis_upload_ui.R", local = TRUE)$value
                 ),

                 ##data check
                 tabPanel(value = "analysis_check",
                          title = "Check Data",
                          icon = icon("check-square"),
                          source("ui/data_cleaning/dc_data_check_ui.R", local = TRUE)$value
                          # uiOutput(outputId = ".dc.data.check.area")
                 ),

                 # ##batch alginment
                 # tabPanel(value = "DCbatchAlignment",
                 #          title = "3.Batch Alignment",
                 #          # icon = icon("align-justify"),
                 #          source("ui/data_cleaning/dc_batch_alignment_ui.R", local = TRUE)$value
                 # ),

                 # ##data quality assessment, before data cleaning
                 # tabPanel(value = "DCdataQualityBefore",
                 #          title = "4.Data Quality Check",
                 #          # icon = icon("flag-checkered"),
                 #          source("ui/data_cleaning/dc_qa1_ui.R", local = TRUE)$value
                 # ),

                 ##missing value processing
                 ##
                 tabPanel(value = "analysis_mv_processing",
                          title = "MV Processing",
                          icon = icon("puzzle-piece"),
                          source("ui/data_cleaning/dc_mv_processing_ui.R", local = TRUE)$value
                 ),

                # ##zero value processing
                # tabPanel(value = "DCzeroProcessing",
                #          title = "6.Zero Value Processing",
                #          # icon = icon("puzzle-piece"),
                #          source("ui/data_cleaning/dc_zero_processing_ui.R", local = TRUE)$value
                # ),

                ##data normalization
                tabPanel(value = "analysis_normalization",
                         title = "Data Normalization",
                         icon = icon("eraser"),
                         source("ui/data_cleaning/dc_data_normalization_ui.R", local = TRUE)$value
                ),

                # ##data integration
                # tabPanel(value = "DCdi",
                #          title = "8.Data Integration",
                #          # icon = icon("paperclip"),
                #          source("ui/data_cleaning/dc_data_integration_ui.R", local = TRUE)$value
                # ),

                # ##outlier processing
                # tabPanel(value = "DCos",
                #          title = "9.Outlier Removal",
                #          # icon = icon("filter"),
                #          source("ui/data_cleaning/dc_outlier_sample_ui.R", local = TRUE)$value
                # ),

                # ##data quality assessment
                # tabPanel(value = "DCdataQualityAfter",
                #          title = "10.Data Quality Visualization",
                #          # icon = icon("flag-checkered"),
                #          source("ui/data_cleaning/dc_qa2_ui.R", local = TRUE)$value
                # ),

                ##data download
                tabPanel(value = "analysis_download",
                         title = "Download",
                         icon = icon("download"),
                         source("ui/data_cleaning/dc_download_result_ui.R", local = TRUE)$value
                         # uiOutput(outputId = ".dc.data.profile.area")
                )
                )
  )
}






