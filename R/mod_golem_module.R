#' golem_moduls UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_golem_moduls_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' golem_moduls Server Functions
#'
#' @noRd 
mod_golem_moduls_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_golem_moduls_ui("golem_moduls_1")
    
## To be copied in the server
# mod_golem_moduls_server("golem_moduls_1")
