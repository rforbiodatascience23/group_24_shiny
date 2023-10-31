#' golem_module UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_golem_module_ui <- function(id){
  ns <- NS(id)
  tagList(

  )
}

#' golem_module Server Functions
#'
#' @noRd
mod_golem_module_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_golem_module_ui("golem_module_1")

## To be copied in the server
# mod_golem_module_server("golem_module_1")

if(FALSE){ # Testing
  golem::detach_all_attached()
  golem::document_and_reload()
  ui <- mod_NAME_ui("mod_golem_module_ui") # replace NAME here
  server <- function( input,output,session){
    mod_NAME_server("mod_golem_module_server") # and here
  }
  shiny::shinyApp(ui, server)
}
