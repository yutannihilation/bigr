resource_path <- function(x = "") {
  relpath <- file.path("rmarkdown/templates/big/resources", x)
  system.file(relpath, package = "bigr")
}

pkg_file <- function(file) {
  abspath <- resource_path(file)
  readLines(abspath, encoding = "UTF-8", warn = FALSE)
}

js_tag <- function(file) {
  htmltools::tags$script(
    htmltools::HTML(
      pkg_file(file)
    )
  )
}

css_tag <- function(file) {
  htmltools::tags$style(
    htmltools::HTML(
      pkg_file(file)
    )
  )
}
