#' 'big' Presentation
#'
#' @export
big_presentation <- function(...) {
  args <- character(0)

  args <- c("--template", resource_path("default.html"))
  args <- c(args, "--section-divs")

  pre_processor <- function(metadata, input_file, runtime, knit_meta, files_dir,
                              output_dir) {
    if (identical(.Platform$OS.type, "windows")) {
      browser()
      big_path <- rmarkdown::relative_to(
        output_dir,
        rmarkdown::render_supporting_files(
          resource_path(),
          files_dir
        )
      )
    } else {
      big_path <- rmarkdown::pandoc_path_arg(resource_path())
    }

    message(big_path)

    c("--variable", paste0("big-path=", big_path))
  }

  rmarkdown::output_format(
    knitr = rmarkdown::knitr_options_html(
      fig_width = 7, fig_height = 5, fig_retina = 2, keep_md = FALSE
    ),
    pandoc = rmarkdown::pandoc_options(
      to = "slidy",
      from = rmarkdown::rmarkdown_format(""),
      args = args
    ),
    pre_processor = pre_processor,
    base_format = rmarkdown::html_document_base(...)
  )
}
