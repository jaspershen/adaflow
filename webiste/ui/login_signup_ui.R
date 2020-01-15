############################################################################
##log in UI
login_ui <- function(){
  wellPanel(fluidRow(column(
    width = 10,
    offset = 1,
    # align = "center", 
    textInput(inputId = "user_name",
              label = "User name",
              placeholder = "Your user name",
              width = "800px"),
    passwordInput(inputId = "password",
                  label = "Password",
                  placeholder = "Your password",
                  width = "800px"),
    shinyalert::useShinyalert(),
    
    actionButton(inputId = "login_button",
                 label = "Log in",
                 styleclass = "info"),
    actionButton(inputId = "jump_2_signup_tab",
                 label = "Sign up",
                 block = FALSE,
                 icon = "upload",
                 styleclass = "info"),
    
    h5("If you don't have a account,",
       br(),
       "please sign up first.",
       style = "color:black;font-weight: normal;"),
    
    actionButton("jump_2_reset_pw_tab",
                 label = "Reset Password",
                 block = FALSE,
                 icon = "upload",
                 styleclass = "warning"),
    
    h5("If you forget your password,",
       br(),
       "please Click Reset password.",
       style = "color:black;font-weight: normal;")
  )))
  # )
  # )
  # )
}


not_logged_in3 <- function(){
  fluidPage(absolutePanel(
    top = "20%",
    left = "35%",
    width = "30%",
    wellPanel(fluidRow(column(
      width = 10,
      offset = 1,
      align = "center",
      # tagList(
      div(img(src = 'Sorry-Note.jpg',
              # height = 400,
              width = 400
      ), style="text-align: center;"),
      
      h3("Please click Log in & Account to log in first.",
         align = "center"),
      
      fluidRow(column(6, align = "center", offset = 3,
                      actionButton("jump_2_initial_tab3",
                                   label = "Log in",
                                   styleclass = "info")
      ))
      # )
    ))
    # tags$style(".well {border-color: white;background-color: white}")
    )
  ))
}


################################################################################
#sign up UI
signup_ui <- function() {
  wellPanel(fluidRow(
    column(
      width = 10,
      offset = 1,
      # align = "center", 
      textInput(
        inputId = "username.signup",
        label = "User name",
        placeholder = "No space",
        width = "800px"
      ),
      passwordInput(
        inputId = "passwd.signup",
        label = "Password",
        placeholder = "More than 6",
        width = "800px"
      ),
      selectInput(
        inputId = "country.signup",
        label = "Country or region",
        choices = country,
        selected = "China",
        multiple = FALSE,
        width = "800px"
      ),
      textInput(
        inputId = "org.signup",
        label = "Organization",
        placeholder = "For example: CAS",
        width = "800px"
      ),
      textInput(
        "email.signup",
        "Email address",
        placeholder = "For example: user_name@163.com",
        width = "800px"
      ),
      # br(),br(),
      actionButton("signup_button",
                   "Sign up",
                   styleclass = "info")
    )
  ))
}



##reset UI
reset_pw_ui <- 
  function(){
  wellPanel(fluidRow(column(
    width = 10,
    offset = 1,
    textInput(inputId = "username.reset",
              label = "User name",
              placeholder = "Your user name",
              width = "800px"),
    textInput("email.reset",
              "Email address",
              placeholder = "Your email",
              width = "800px"),
    
    passwordInput(inputId = "passwd.reset",
                  label = "New password",
                  placeholder = "New password",
                  width = "800px"),
    # br(),br(),
    actionButton("reset_button",
                 "Submit",
                 styleclass = "info")
  )))
  # )
  # )
  # )
}

# reset_pw_ui <- function(){
#   tagList(
#     fluidPage(
#       wellPanel(
#         textInput(inputId = "username.reset",
#                   label = "User name",
#                   placeholder = "Your user name",
#                   width = "800px"),
#         textInput("email.reset",
#                   "Email address",
#                   placeholder = "Your email",
#                   width = "800px"),
#         
#         passwordInput(inputId = "passwd.reset",
#                       label = "New password",
#                       placeholder = "New password",
#                       width = "800px"),
#         # br(),br(),
#         actionButton("reset_button",
#                      "Submit",
#                      styleclass = "info")
#       )
#     )
#   )
# }



##sign up information
# uiSignup <- function(){
#   tagList(
#     fluidPage(
#       wellPanel(
#         textInput("username.signup",
#                   "User name", width = "800px"),
#         passwordInput("passwd.signup",
#                       "Password", width = "800px"),
#         selectInput(inputId = "country.signup",
#                     label = "Country or region",
#                     choices = country,
#                     selected = "China", multiple = FALSE,
#                     width = "800px"),
#         textInput("org.signup",
#                   "Organization",
#                   width = "800px"),
#         textInput("email.signup",
#                   "Email address", width = "800px"),
#         actionButton("signup_button",
#                      "Submit",
#                      styleclass = "info")
#       )
#     )
#   )
# }



signup_success_ui <- function(){
  fluidPage(absolutePanel(
    top = "20%",
    left = "10%",
    width = "80%",
    wellPanel(fluidRow(column(
      width = 10,
      offset = 1,
      align = "center",
      div(img(src='congratugation.jpg',
              height = 240, width = 889
      ), style = "text-align: center;"),
      h3(
        "Thank you for your register. 
      Now you can log in to analyze data.",
        align = "center"),
      fluidRow(column(6, align = "center", offset = 3,
                      actionButton("jump_2_initial_tab7",
                                   label = "Log in",
                                   styleclass = "info")
      ))
      # )
    ))
    # tags$style(".well {border-color: white;background-color: white}")
    )
  ))
}


# signup_success_ui <- function(){
#   tagList(
#     br(), br(), br(),
#     div(img(src='congratugation.jpg',
#             height = 240, width = 889
#     ), style = "text-align: center;"),
#     h3(
#       "Thank you for your register. 
#       Now you can log in to analyze data.",
#       align = "center"),
#     fluidRow(column(6, align = "center", offset = 3,
#                     actionButton("jump_2_initial_tab7",
#                                  label = "Log in",
#                                  styleclass = "info")
#     ))
#   )
# }

reset_success_ui <- function(){
  fluidPage(absolutePanel(
    top = "20%",
    left = "10%",
    width = "80%",
    wellPanel(fluidRow(column(
      width = 10,
      offset = 1,
      align = "center",
      tagList(
        div(img(src='congratugation.jpg',
                height = 240, width = 889
        ), style="text-align: center;"),
        h3(
          "Please refresh the page and use your new password to log in.",
          align = "center")
      )
    )))
  ))
}



# reset_success_ui <- function(){
#   tagList(
#     div(img(src='congratugation.jpg',
#             height = 240, width = 889
#     ), style="text-align: center;"),
#     h3(
#       "Please refresh the page and use your new password to log in.",
#       align = "center")
#   )
# }
