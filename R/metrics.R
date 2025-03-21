# Prompt the user to enter data

get_metrics <- function(prompt) {
    data <- as.integer(readline(prompt))
    return(data)
}

customer_retention <- get_metrics("Customer Retention: ")
conversion_rate <- get_metrics("Conversion Rate: ")
customer_sat <- get_metrics("Customer Satisfaction: ")
np_score <- get_metrics("Net Promoter Score: ")