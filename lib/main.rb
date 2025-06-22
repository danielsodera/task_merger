# Task manager app 
# Aim: compare two task lists and merge the two, accounting for duplicates 

# tasks_1 = [
#   { title: "Submit report", due_date: "2025-06-22" },
#   { title: "Email client", due_date: "2025-06-23" }
# ]

# tasks_2 = [
#   { title: "Submit report", due_date: "2025-06-22" },
#   { title: "Prepare deck", due_date: "2025-06-24" }
# ]

def merge(list_1, list_2)

  list_2.each { |task| list_1 << task unless list_1.include? task }
  
  list_1
end