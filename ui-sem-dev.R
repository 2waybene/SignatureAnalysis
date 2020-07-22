dat <- NULL

if (file.exists("dataSEM/sampleDAT.txt")){
  dt <- read.table ("dataSEM/sampleDAT.txt", sep="\t", header = TRUE )
  dat <- as.data.frame(dt[,-1])
  rownames(dat) <- dt[,1]
}else{
  load ("dataSEM/parsedNewDT.rda")
  load ("dataSEM/new_t_scores_w_lev.rda")
  dat <- as.data.frame(c(dat,NewDT))
}


endoVars <- c(colnames(dat)) # Get variables


tabPanel("SEM", 
         br(),
         fluidRow(
           tabsetPanel(
             tabPanel("Model", 
                      
                    #  fluidRow(
                    #      column(15, downloadButton ("downloadData", "Download SEM Report"))
                     #           ),
                          
                      fluidRow(
                        #  column(3, downloadButton ("downloadData", "Download SEM Report")
                         #        ),
                        
                        
                          column(6, # Drop down menus
                          selectInput("exo1",label="Choose a exogenous variable", choices=endoVars, selected=endoVars[1]), 
                          selectInput("exo2",label="Choose a exogenous variable", choices=endoVars, selected=endoVars[2]),
                          selectInput("endo",label="Choose a endogenous variable", choices=endoVars, selected=endoVars[12])
                        #  downloadButton ("downloadData", "Download SEM Report")
                          ), 
                         #),
                      #  fluidRow( 
                      #    column(5,div(style="display: inline-block;vertical-align:top;",verbatimTextOutput("semSummary"))),
                       
                        # downloadButton ("downloadData", "Download SEM Report")
                        #  ),
                          column(4, # SEM Model image
                             div(style="display: inline-block;vertical-align:top;",imageOutput("semModel"))
                          )
                      ),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    fluidRow( 
                      column(6,div(style="display: inline-block;vertical-align:top;",verbatimTextOutput("semSummary")))
                      
                      # downloadButton ("downloadData", "Download SEM Report")
                   
                    #       ),
                    
                    ##  can't add download button here!!
                    #fluidRow(
                    # downloadButton ("downloadData", "Download SEM Report")
                               )
                    ##  need help here!!
                    
 
             ),
             tabPanel("SEM Intro",includeMarkdown("instructions/SEMIntro.Rmd")) # Intro markdown file
           )
         )
)        




