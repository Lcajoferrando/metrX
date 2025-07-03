library(testthat)
library(metrX)
test_check("metrX")


test_that("`get_metrics` returns a positive number", {
    expect_error (get_metrics(data = -1))
    expect_error(get_metrics(data = NA))

})