library(shiny)
library(shinythemes)
library(shinysky)#github:devtools::install_github("AnalytixWare/ShinySky")
library(digest)
library(shinyIncubator)#github:devtools::install_github("rstudio/shiny-incubator")
library(colourpicker)
library(shinyBS)
library(waiter)
library(tidyverse)
# library(impute)#bioconductor
# library(missForest)
# library(pcaMethods)#bioconductor
library(shinyalert)
# library(stats)
# library(beeswarm)
library(shinyWidgets)
# library(ellipse)
# library(pheatmap)#need install the newest version
# library(plsdepot)
# library(pls)
library(knitr)
library(pryr)
# library(Rdisop)
library(stringr)
library(plotly)
# library(PerformanceAnalytics)
# library(psych)
library(kableExtra)
# library(e1071)
# library(randomForest)
# library(pROC)
# library(ggcorrplot)
library(pbapply)
library(zip)
library(DT)
# library(MetCleaning)#devtools::install_githb("jaspershen/MetCleaning")

##source functions
# source("function/tools.R")
# source("function/paraTrans.R")
source("function/help.R")

## function for data cleaning
# source("function/data_cleaning/checkData.R")
# source("function/data_cleaning/batchAlignment.R")
# source("function/data_cleaning/dataIntegration.R")
# source("function/data_cleaning/dataNormalization.R")
# source("function/data_cleaning/findOutlier.R")
# source("function/data_cleaning/mvFunction.R")
# source("function/data_cleaning/pcaFunction.R")
# source("function/data_cleaning/zeroFunction.R")

##function for metabolite identification
# source("function/metabolite_identification/miFunction.R")
# source("function/metabolite_identification/miCheckMS1.R")
# source("function/metabolite_identification/miCheckMS2.R")
# source("function/metabolite_identification/ms2MzRtPlot.R")
# source("function/metabolite_identification/formulationFunctions.R")

##function for data cleaning, one step
# source("function/one_data_cleaning/checkParamTable.R")
#
# ##function for merge identification
# source("function/merge_identification/checkDataMerge.R")
# source("function/merge_identification/mergeIden.R")
#
# ##function for pathway analysis
# source("function/pathway_analysis/pathwayEnrichment.R")
# source("function/pathway_analysis/paCheckData.R")

###source UI
source("ui/account_ui.R")
source("ui/comment_ui.R")
source("ui/home_page_ui.R")
source("ui/login_signup_ui.R")
source("ui/demo_data_ui.R")

##analysis UI
source("ui/analysis/analysis_ui.R")

shinyUI(
  navbarPage(
    id = "initial_tab",collapsible = TRUE, 
    windowTitle = "AdaFlow",
    # title = span(img(src = "metflow logo2.png", width = 30)),
    # img(src = "metflow logo2.png", style = "float:right; padding-right:25px"),
    title = div(
      img(
        src = "adaflow_logo2.png",
        height = 30,
        width = 26
        # style = "margin:10px 10px"
      ),
      "AdaFlow"
    ),
    
    footer = tags$footer(
      h5(
        "©",
        tags$a(href = "https://github.com/jaspershen", "Snyder lab",
               target = "_blank"),
        # "Snyder lab",
        ", School of Medicine, Stanford University. All Rights Reserved.",
        align = "center",
        style = "font-weight: normal; font-family: arial; font-weight:400;"
      ),
      align = "center",
      style =
        "
               position:fixed;
               bottom:0;
               left:0;
               right:0;
               color: white;
               padding: 0px;
               margin:0;
               background-color: black;
               box-sizing:border-box;
               z-index: 1000;
               height: 30px;
               margin-bottom: 0;
               "
    ),
    header = NULL,
    # shinythemes::themeSelector(),
    theme = shinythemes::shinytheme("cosmo"),
    inverse = FALSE,
    fluid = TRUE,
    selected = "Home",
    position = "static-top",
    #---------------------------------------------------------------
    ##Home
    tabPanel(
      title = "Home",
      icon = icon("home"),
      uiOutput("home_page")
      # style='width: 50%;'
    ),
    
    #---------------------------------------------------------------
    #log in and account
    tabPanel(
      value = "log_in_tab",
      title = "Log in & Account",
      icon = icon(name = "user-circle"),
      uiOutput("account_page")
    ),
    
    #---------------------------------------------------------------
    #Analysis
    navbarMenu(
      title = "Analysis",
      icon = icon(name = "calculator"),
      tabPanel("Data Analysis",
               uiOutput("data_analysis_page"))
    ),
    
    #---------------------------------------------------------------
    #Help
    navbarMenu(
      icon = icon(name = "info", lib = "font-awesome"),
      title = "Help",
      tabPanel(
        title = a("AdaFlow Tutorial",
                  href = "http://www.zhulab.cn/uploads/file/MetFlow/metflow_tutorial.html",
                  target = "_blank")
      ),
      tabPanel(title = "Demo data",
               # icon = icon("database"),
               uiOutput("demo_data_page"))
    ),
    
    #---------------------------------------------------------------
    #Comments
    tabPanel(
      title = "Comments",
      icon = icon(name = "comments"),
      fluidPage(uiOutput("comment_page"))
    ),
    
    #---------------------------------------------------------------
    #Sign up
    tabPanel(
      value = "sign_up_tab",
      title = "Sign up",
      icon = icon(name = "user-plus"),
      uiOutput("sign_up_page")
    ),
    
    #---------------------------------------------------------------
    #Reset password
    tabPanel(
      value = "reset_pw_tab",
      title = "Reset password",
      icon = icon(name = "key"),
      uiOutput("reset_pw_page")
    )
    # actionLink("openModal", label = "", icon = icon("info"))
  )
  # )
)
