# Prompt the user to enter data
get_metrics <- function(prompt) {
  repeat { # nolint
    data <- suppressWarnings(as.numeric(readline(prompt)))
    if (!is.na(data) && data >= 0) {
      return(data) # Única forma de salir del bucle repeat
    } else {
      cat("Invalid input. Please enter a non-negative number.\n")
    }
  }
}

customer_retention <- get_metrics("Customers Retention: ")
conversion_rate <- get_metrics("Total visitors: ", "Total conversions: ")
customer_sat <- get_metrics("Customer Satisfaction: ")
np_score <- get_metrics("Net Promoter Score: ")