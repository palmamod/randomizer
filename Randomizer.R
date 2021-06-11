# create list (vector) with "candidates"
list <- c('Team_member_1', 'Team_member_2', 'Team_member_3', 'Team_member_4')

# randomly select items from list, 5 times, replace=TRUE solves the issue of a sample larger than the whole population
sample(list, 5, replace=TRUE)

# create a table with the five time slots, the type of check, the saturday and sunday randomization
# first define what is in the 4 columns
time_slots <- c(10, 12, 15, 18, 21)
check_type <- c('light', 'full', 'light', 'full', 'light')
saturday <- c(sample(list, 5, replace=TRUE))
sunday <- c(sample(list, 5, replace=TRUE))
  
# then create the actual table (a data frame)
assignments <- data.frame(time_slots, check_type, saturday, sunday)

#last, print the table
print(assignments)
