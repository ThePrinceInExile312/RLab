# minimal
# students <- data.frame(
#   name = c("Alice", "Bob", "Charlie", "David"),
#   math = c(85, 70, 95, 60),
#   sci = c(90, 65, 85, 75),
#   att = c(80, 50, 90, 60)
# )

# students$avg <- rowMeans(students[, 2:3])  # Calculate average score
# students$lowat <- students$att < 75  # Check low attendance

# print(students[, c("name", "avg", "lowat")])  # Generate report

library(dplyr)

# Initialize students data frame
students <- data.frame(
    name = character(),
    math = numeric(),
    sci = numeric(),
    att = numeric()
)

# Function to add a student
add <- function(name, math, sci, att) {
    new <- data.frame(name = name, math = math, sci = sci, att = att)
    students <<- bind_rows(students, new)
}

# Function to calculate average score
avgcalc <- function() {
    students$avg = (students$math + students$sci) / 2
    res <- students[, c("name", "avg")]
    return(res)
}

# Function to check students with low attendance
lowatt <- function(threshold) {
    students$lowat = students$att < threshold
    res <- students[, c("name", "lowat")]
    return(res)
}

# Function to generate the report
report <- function() {
    avs <- avgcalc()  # Call the avgcalc function
    low <- lowatt(75)  # Get students with low attendance
    
    # Print the average scores
    print(avs)
    print(low)
}

# Predefined list of students and their data
student_data <- list(
    list(name = "Alice", math = 85, sci = 90, att = 80),
    list(name = "Bob", math = 70, sci = 65, att = 50),
    list(name = "Charlie", math = 95, sci = 85, att = 90),
    list(name = "David", math = 60, sci = 75, att = 60)
)

# Add students to the data frame
for (student in student_data) {
    add(student$name, student$math, student$sci, student$att)
}

# Generate the report
report()
