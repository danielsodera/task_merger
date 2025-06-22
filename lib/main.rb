# Task manager app 

def merge(list_1, list_2)

  list_2.each { |task| list_1 << task unless list_1.include? task }
  
  list_1
end