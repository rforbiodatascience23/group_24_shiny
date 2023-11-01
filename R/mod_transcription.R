#' Transcription UI Function
#'
#' @importFrom shiny NS tagList
mod_transcription_ui <- function(id) {
  ns <- NS(id)
  tagList(
    fluidRow(
      column(8, textAreaInput(
        inputId = ns("input_dna"),
        label = "DNA sequence for transcription",
        placeholder = "Insert DNA sequence to transcribe",
        height = 100,
        width = 600
      )),
      column(4,
             actionButton(
               inputId = ns("transcribe_dna"),
               label = "Transcribe DNA",
               style = "margin-top: 18px;"
             )
      )
    ),
    textAreaInput(
      inputId = ns("transcribed_rna"),
      label = "Transcribed RNA sequence",
      placeholder = "Transcribed RNA sequence will appear here",
      height = 100,
      width = 600
    )
  )
}

#' Transcription Server Function
#'
mod_transcription_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    observeEvent(input$transcribe_dna, {
      req(input$input_dna)
      transcribed_rna <- cdogma24::Transcr(input$input_dna)
      updateTextAreaInput(session, "transcribed_rna", value = transcribed_rna)
    })
  })
}
