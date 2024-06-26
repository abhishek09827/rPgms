days_overdue <- as.integer(readline("Enter the number of days the book is overdue: "))
calculate_fine <- function(days_overdue) {
  if (days_overdue <= 7) {
    fine <- 0 
  } else if (days_overdue <= 30) {
    fine_per_day <- 2
    fine <- (days_overdue - 7) * fine_per_day
  } else {
    fine_cap <- 50
    fine <- fine_cap
  }
  return(fine)
}

fine_amount <- calculate_fine(days_overdue)



cat("Fine Amount:", fine_amount, "\n")
if (fine_amount == 0) {
  cat("No fine. Thank you for returning the book on time!\n")
} else {
  if (days_overdue > 30) {
    cat("Fine exceeds the maximum cap. Please contact the library.\n")
  } else {
    cat("Please pay the fine within the specified period.\n")
  }
}
