comment_ui <- function(){
  fluidPage(absolutePanel(
    top = "10%",
    left = "5%",
    width = "90%",
    draggable = FALSE, 
    # wellPanel(fluidRow(column(
    #   width = 10,
    #   offset = 1,
    #   align = "center",
      tagList(
        column(width = 9, offset = 1,
              #  h4("If you have any questions about AdaFlow,
              # please do not hesitate to leave us a message!",
              #     br(),
              #     "You can also send email to us, shenxt@stanford.edu",
              #     align = "justify",
              #     style="line-height:40px;color:black"),
               tabPanel(title = "Comments", icon = icon(name = "comments"),
                        tabPanel(title = "disqus_here",
                                 div(id="disqus_thread",
                                     HTML(
                                       "<script>(function() {
                                   var d = document, s = d.createElement('script');

                                   s.src = 'https://adaflow.disqus.com/embed.js';

                                   s.setAttribute('data-timestamp', +new Date());
                                   (d.head || d.body).appendChild(s);
})();
                                   </script>
                                   <noscript>Please enable JavaScript to view the <a href='https://disqus.com/?ref_noscript' rel='nofollow'>comments powered by Disqus.</a></noscript>"
                                     )
                                 )
                        )
               ),
               div(HTML('<script id="dsq-count-scr" src="https://adaflow.disqus.com/embed.js" async></script>'))
        ),
        br(), br(), br()
        # )
      )
    # )))
  ))
}


###data cleaning UI
# comment_ui <- function(){
#   tagList(
#     column(width = 8, offset = 2,
#            h4("If you have any questions about AdaFlow,
#               please do not hesitate to leave us a message!",
#               br(),
#               "You can also send email to us, shenxt@stanford.edu",
#               align = "justify",
#               style="line-height:40px;color:black"),
#            tabPanel(title = "Comments", icon = icon(name = "comments"),
#                     tabPanel(title = "disqus_here",
#                              div(id="disqus_thread",
#                                  HTML(
#                                    "<script>(function() {
#                                    var d = document, s = d.createElement('script');
# 
#                                    s.src = 'https://adaflow.disqus.com/embed.js';
# 
#                                    s.setAttribute('data-timestamp', +new Date());
#                                    (d.head || d.body).appendChild(s);
# })();
#                                    </script>
#                                    <noscript>Please enable JavaScript to view the <a href='https://disqus.com/?ref_noscript' rel='nofollow'>comments powered by Disqus.</a></noscript>"
#                              )
#                              )
#                              )
#                              ),
#            div(HTML('<script id="dsq-count-scr" src="https://adaflow.disqus.com/embed.js" async></script>'))
#                              ),
#     br(), br(), br()
#     # )
#   )
#   }




