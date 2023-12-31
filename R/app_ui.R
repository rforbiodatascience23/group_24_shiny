#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    fluidPage(
      h1("Dogma24"),
      tabsetPanel(
        tabPanel(title = "Generate DNA",
                 mod_generate_dna_ui("generate_dna_1")),
        tabPanel(title = "Transcription",
                 mod_transcription_ui("transcription_1")),
        tabPanel(title = "Translation",
                 mod_translation_ui("translation_1")),
        tabPanel(title = "Amino Acid Plot",
                 mod_plot_ui("plot_1"))
      )# tabsetPanel
    )#fluidPage
  )
}
'        tabPanel(title = "Translation",
                 mod_translation_ui("translation_1")),
        tabPanel(title = "Amino Acid Frequencies",
                 mod_aa_frequencies_ui("aa_frequencies_1")),'
#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "Dogma24"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
