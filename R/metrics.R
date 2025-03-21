# Prompt the user to enter data

get_metrics <- function(prompt) {
    data <- suppressWarnings(as.numeric(readline(prompt)))
    if (!is.na(data)) {
        if (data >= 0) {
            return(data)
        } else {
            cat("Invalid input. Please enter a non-negative number.\n")
        }
    } else {
        cat("Invalid input. Please enter a number.\n")
    }
}

customer_retention <- get_metrics("Customer Retention: ")
conversion_rate <- get_metrics("Conversion Rate: ")
customer_sat <- get_metrics("Customer Satisfaction: ")
np_score <- get_metrics("Net Promoter Score: ")