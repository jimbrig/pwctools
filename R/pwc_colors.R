#' PwC Colors
#'
#' @description
#' Retrieve a vector specifying the custom PwC color palette generated off the
#' official logo using [paletter::create_palette()].
#'
#' @return Character vector of color hex codes
#' @export
#'
#' @keywords colors
#'
#' @examples
#' library(pwctools)
#' pwc_colors()
pwc_colors <- function() {
  pwc_colors_vector
}

#' View PwC Colors
#'
#' @description
#' View the PwC Color Palette.
#'
#' @inheritDotParams scales::show_col
#'
#' @export
#'
#' @importFrom scales show_col
#'
#' @keywords colors
#'
#' @examples
#' \dontrun{
#' view_pwc_colors()
#' }
view_pwc_colors <- function(...) {
  scales::show_col(pwc_colors())
}
