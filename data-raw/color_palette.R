
#  ------------------------------------------------------------------------
#
# Title : Derivation of the PwC Color Pallete from Logo
#    By : Jimmy Briggs
#  Date : 2022-06-10
#
#  ------------------------------------------------------------------------

# devtools::install_github("AndreaCirilloAC/paletter")
library(paletter)
require(fs)

image_path <- "~/Pictures/PwC/PricewaterhouseCoopers_Logo.jpg"
fs::dir_create("inst/assets/img")
fs::file_copy(image_path, "inst/assets/img/PwC-Logo.jpg")

pwc_colors_vector <- create_palette(
  image_path = image_path,
  number_of_colors = 32,
  type_of_variable = "categorical"
)

pwc_colors_vector

usethis::use_data(pwc_colors_vector, overwrite = TRUE, internal = TRUE)
