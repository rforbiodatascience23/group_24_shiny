#' dna_seq UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_dna_seq_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidRow(
    column(8, "DNA_sequence"),
    column(4, "random_dna_length", "generate_dna_button")
  ),
  "peptide_sequence"

  )
}

#' dna_seq Server Functions
#'
#' @noRd
mod_dna_seq_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_dna_seq_ui("dna_seq_1")

## To be copied in the server
# mod_dna_seq_server("dna_seq_1")
