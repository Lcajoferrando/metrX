# Prompt the user to enter data

get_metrics <- function(prompt) {
  repeat {
    data <- suppressWarnings(as.numeric(readline(prompt)))
    if (!is.na(data) && data >= 0) {
      return(data) # Única forma de salir del bucle repeat
    } else {
      cat("Invalid input. Please enter a non-negative number.\n")
    }
  }
}

# Esta es con recursión, pero no es recomendable (pregúntale a Perplexity)
get_metrics <- function(prompt) {
    data <- suppressWarnings(as.numeric(readline(prompt)))
    if (!is.na(data) && data >= 0) {
        return(data) # Única forma de salir del bucle repeat
    } else {
        cat("Invalid input. Please enter a non-negative number.\n")
        repeat {
            get_metrics(prompt)
        }
    }
}

customer_retention <- get_metrics("Customer Retention: ")
conversion_rate <- get_metrics("Conversion Rate: ")
customer_sat <- get_metrics("Customer Satisfaction: ")
np_score <- get_metrics("Net Promoter Score: ")