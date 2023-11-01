#' Translation UI Function
#'
#' @importFrom shiny NS tagList
mod_translation_ui <- function(id) {
  ns <- NS(id)
  tagList(
    fluidRow(
      column(8, textAreaInput(
        inputId = ns("input_rna"),
        label = "RNA sequence for translation",
        placeholder = "Insert RNA sequence to translate",
        height = 100,
        width = 600
      )),
      column(4,
             actionButton(
               inputId = ns("translate_rna"),
               label = "Translate RNA",
               style = "margin-top: 18px;"
             )
      )
    ),
    textAreaInput(
      inputId = ns("translated_peptide"),
      label = "Translated Peptide sequence",
      placeholder = "Translated peptide sequence will appear here",
      height = 100,
      width = 600
    )
  )
}

#' Translation Server Function
#'
mod_translation_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    observeEvent(input$translate_rna, {
      req(input$input_rna)
      codon_sequence <- cdogma24::CodonFinder(input$input_rna)
      protein_sequence <- cdogma24::ProChain(codon_sequence)
      updateTextAreaInput(session, "translated_peptide", value = protein_sequence)
    })
  })
}
