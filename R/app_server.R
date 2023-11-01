#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  mod_generate_dna_server("generate_dna_1")
  mod_transcription_server("transcription_1")
  mod_translation_server("translation_1")
  mod_plot_server("plot_1")

}
'
  mod_aa_frequencies_server("aa_frequencies_1")'
