#' @export
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

#' @export
calculate_customer_retention <- function() {
  prompts <- c(
               "Customers at start of the period: ",
               "Customers at the end of the period: ",
               "New customers acquired during the period: ")
  customer_retention_rate_data <- sapply(prompts, get_metrics)

  customers_at_start <- customer_retention_rate_data[1]
  customers_at_end <- customer_retention_rate_data[2]
  new_customers <- customer_retention_rate_data[3]

  customer_retention_rate <- ((customers_at_end - new_customers) /
                                customers_at_start) * 100

  return (customer_retention_rate)
}

#' @export
calculate_customer_churn_rate <- function() {
  prompts <- c(
               "Lost customers: ",
               "Total customers at start of period: ")
  customer_churn_rate_data <- sapply(prompts, get_metrics)

  lost_customers <- customer_churn_rate_data[1]
  total_customers <- customer_churn_rate_data[2]

  customer_churn_rate <- (lost_customers / total_customers) * 100

  return (customer_churn_rate)
}

#' @export
calculate_customer_conversion_rate <- function() {
  prompts <- c(
               "Number of conversions: ",
               "Total number of leads: ")
  customer_conversion_rate_data <- sapply(prompts, get_metrics)

  number_of_conversions <- customer_conversion_rate_data[1]
  total_number_of_leads <- customer_conversion_rate_data[2]

  customer_conversion_rate <- (number_of_conversions /
                                 total_number_of_leads) * 100

  return (customer_conversion_rate)
}

#' @export
calculate_customer_satisfaction_score <- function() {
  prompts <- c(
               "Number of positive responses: ",
               "Total number of responses: ")
  customer_satisfaction_score_data <- sapply(prompts, get_metrics)

  positive_responses <- customer_satisfaction_score_data[1]
  total_responses <- customer_satisfaction_score_data[2]

  customer_satisfaction_score <- (positive_responses / total_responses) * 100

  return (customer_satisfaction_score)
}

#' @export
calculate_net_promoter_score <- function() {
  prompts <- c(
               "Total respondents: ",
               "Number of promoters: ",
               "Number of detractors: ")
  net_promoter_score_data <- sapply(prompts, get_metrics)

  total_respondents <- net_promoter_score_data[1]
  number_of_promoters <- net_promoter_score_data[2]
  number_of_detractors <- net_promoter_score_data[3]

  net_promoter_score <- (number_of_promoters / total_respondents) -
    (number_of_detractors / total_respondents) * 100

  return(net_promoter_score)
}

