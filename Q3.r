d <- as.integer(readline("Enter days: "))
if (d <= 7) {
  cat("No fine\n")
} else if (d <= 30) {
  fine <- (d - 7) * 5
  cat(sprintf("%d is the fine to be paid\n", fine))  
  # Use cat to print the fine
} else {
  cat("Fine exceeds cap\n")
}
