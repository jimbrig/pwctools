test_that("pwc_colors works", {
  colors <- c("#DF6F6D",
              "#DC5343",
              "#D63719",
              "#E25430",
              "#DE4219",
              "#DF5028",
              "#D94813",
              "#DD5211",
              "#DD5312",
              "#D75509",
              "#E5711A",
              "#EFBC8D",
              "#F8B87A",
              "#EDBE8A",
              "#EC8818",
              "#F8B05E",
              "#F5C48C",
              "#F7C27E",
              "#E68D17",
              "#E68E12",
              "#E58D0F",
              "#DFC08A",
              "#E6C68B",
              "#F8D584",
              "#F7BD1D",
              "#E9C515",
              "#DBC637",
              "#DE6296",
              "#EC6F97",
              "#E96479",
              "#ED6977",
              "#DA8990")
  expect_vector(pwc_colors())
  expect_equal(pwc_colors(), colors)
})

test_that("view pwc colors works", {
  expect_equal(view_pwc_colors(), NULL)
})

