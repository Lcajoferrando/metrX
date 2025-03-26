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

# Prompt the user to enter Customer Retention Rate metrics
crr_prompts <- c(
                 "Customers at start of the period: ",
                 "Customers at the end of the period: ",
                 "New customers acquired during the period: ")
customer_retention_rate <- sapply(crr_prompts, get_metrics)

# Prompt the user to enter Customer Churn Rate metrics
ccr_prompts <- c(
                 "Lost customers: ",
                 "Total customers at start of period: ")
customer_churn_rate <- sapply(ccr_prompts, get_metrics)

# Prompt the user to enter Customer Conversion Rate metrics
cco_prompts <- c(
                 "Number of conversions: ",
                 "Total number of leads: ")
customer_conversion_rate <- sapply(cco_prompts, get_metrics)

# Prompt the user to enter Customer Satisfaction Score metrics
css_prompts <- c(
                 "Number of positive responses: ",
                 "Total number of responses: ")
customer_satisfaction_score <- sapply(css_prompts, get_metrics)

# Prompt the user to enter Net Promoter Score metrics
nps_prompts <- c(
                 "Number of promoters: ",
                 "Number of detractors: ",
                 "Number of passives: ")
net_promoter_score <- sapply(nps_prompts, get_metrics)

# Extract the values from the vectors
## Customer Retention Rate
customer_retention_rate[[1]]
customer_retention_rate[[2]]
customer_retention_rate[[3]]

## Customer Churn Rate
customer_churn_rate[[1]]
customer_churn_rate[[2]]

## Customer Conversion Rate
customer_conversion_rate[[1]]
customer_conversion_rate[[2]]

## Customer Satisfaction Score
customer_satisfaction_score[[1]]
customer_satisfaction_score[[2]]

## Net Promoter Score
net_promoter_score[[1]]
net_promoter_score[[2]]
net_promoter_score[[3]]

# Calculate the metrics
# Customer Retention Rate
c_retention_result <- ((customer_retention_rate[[2]] -
                          customer_retention_rate[[3]]) /
                         customer_retention_rate[[1]]) * 100
cat("Customer Retention Rate: ", c_retention_result, "%\n")

# Customer Churn Rate
c_churn_rate <- (customer_churn_rate[[1]] /
                   customer_churn_rate[[2]]) * 100
cat("Customer Churn Rate: ", c_churn_rate, "%\n")

# Customer Conversion Rate
c_conversion_rate <- (customer_conversion_rate[[1]] /
                        customer_conversion_rate[[2]]) * 100
cat("Customer Conversion Rate: ", c_conversion_rate, "%\n")

# Customer Satisfaction Score
c_satisfaction_score <- (customer_satisfaction_score[[1]] /
                           customer_satisfaction_score[[2]]) * 100
cat("Customer Satisfaction Score: ", c_satisfaction_score, "%\n")

# Net Promoter Score
n_promoter_score <- (net_promoter_score[[1]] - net_promoter_score[[2]])
cat("Net Promoter Score: ", n_promoter_score, "%\n")