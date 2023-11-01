#' Generate DNA UI Function
#'
#' @importFrom shiny NS tagList
mod_generate_dna_ui <- function(id) {
  ns <- NS(id)
  tagList(
    fluidRow(
      column(8, textAreaInput(
        inputId = ns("generated_dna"),
        label = "Generated DNA sequence",
        placeholder = "Generated DNA sequence will appear here",
        height = 100,
        width = 600
      )),
      column(4,
             numericInput(
               inputId = ns("dna_length"),
               value = 6000,
               min = 3,
               max = 100000,
               step = 3,
               label = "Random DNA length"
             ),
             actionButton(
               inputId = ns("generate_dna"),
               label = "Generate random DNA",
               style = "margin-top: 18px;"
             )
      )
    )
  )
}

#' Generate DNA Server Function
#'
mod_generate_dna_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    generated_dna <- reactiveVal() # Reactive value for generated DNA

    observeEvent(input$generate_dna, {
      generated_dna(cdogma24::SeqLen(input$dna_length))
      updateTextAreaInput(session, "generated_dna", value = generated_dna())
    })
  })
}
