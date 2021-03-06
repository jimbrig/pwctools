
#  ------------------------------------------------------------------------
#
# Title : pwctools R Package Development Script
#    By : Jimmy Briggs
#  Date : 2022-06-10
#
#  ------------------------------------------------------------------------

# library R packages ------------------------------------------------------

library(devtools)
library(usethis)
library(pkgbuild)
library(pkgload)
library(pkgdown)
library(testthat)
library(knitr)
library(pak)
library(purrr)
library(desc)
library(chameleon)
library(attachment)
library(templateeR)

# initialize package ------------------------------------------------------

usethis::create_package("pwctools")
usethis::use_namespace()
usethis::use_roxygen_md()
usethis::use_git()
usethis::use_package_doc()
usethis::use_tibble() # #' @return a [tibble][tibble::tibble-package]
usethis::use_pipe()
usethis::use_tidy_eval()
devtools::document()


# github ------------------------------------------------------------------

# set description and title first so included in GH repo
desc::desc_set(
  "Description" = "Internal tools for PwC Developers.",
  "Title" = "PwC Toolkit"
)

usethis::use_github(private = TRUE)

# github labels -----------------------------------------------------------
library(templateeR)
templateeR::use_gh_labels()
templateeR::use_git_cliff()
templateeR::use_git_cliff_action()

# package docs ------------------------------------------------------------

usethis::use_readme_rmd()
usethis::use_mit_license()
usethis::use_news_md()


# functions ---------------------------------------------------------------

c(
  # add function file names here:
  "pwc_colors"
) |> purrr::walk(usethis::use_r, open = FALSE)


# tests -------------------------------------------------------------------

c(
  # add function test file names here:
  "pwc_colors"
) |> purrr::walk(usethis::use_test)

# data --------------------------------------------------------------------

c(
  # add data prep script names here:
  "color_palette"
) |> purrr::walk(usethis::use_data_raw)

# vignettes ---------------------------------------------------------------

c(
  # add vignette names here:
  "pwctools"
) |> purrr::walk(usethis::use_vignette)


# utils -------------------------------------------------------------------

usethis::use_coverage()
devtools::build_readme()
usethis::use_github_action("test-coverage")
usethis::use_spell_check()
usethis::use_pkgdown_github_pages()
usethis::use_github_action("pkgdown")
usethis::use_lifecycle_badge("experimental")
devtools::build_readme()
covr::package_coverage()
usethis::use_github_action_check_standard()
covrpage::covrpage()
