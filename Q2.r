nostud <- 3
nocourse <- 3
stud <- c("a", "b", "c")
mat <- matrix(c(90, 89, 97, 94, 87, 66, 94, 91, 86), nrow=nostud, byrow=TRUE)

for (i in 1:nostud) {
    j <- 1  # Start j at 1 because matrix indexing in R starts from 1
    sum <- 0
    
    while (j <= nocourse) {  # j should go from 1 to nocourse (not 0 to nocourse-1)
        sum <- sum + mat[i, j]
        j <- j + 1
    }
    
    avg <- sum / nocourse  # Calculate the average

    cat(sprintf("Student %s - Total: %d, Average: %.2f", stud[i], sum, avg))  # Print total and average
    
    # Determine grade
    if (avg >= 90) {
        grade <- "A"
    } else if (avg >= 80) {
        grade <- "B"
    } else if (avg >= 70) {
        grade <- "C"
    } else {
        grade <- "F"  # You can add a grade "F" for students with average below 70
    }
    
    cat(sprintf(", Grade: %s\n", grade))  # Print grade
}
