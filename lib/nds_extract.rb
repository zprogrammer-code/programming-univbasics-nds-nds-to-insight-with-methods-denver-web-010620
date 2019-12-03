require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(directors_database)
    result = {}
  grand_total = 0 
  row_index = 0 
  while row_index < directors_database.length do
    name = directors_database[row_index][:name]
    grand_total += gross_for_director(directors_database)
    
    if !result[name]
      result[name] = grand_total
    else
      result[name] += grand_total
    end
    row_index += 1 
  end
  #binding.pry 
  return result
end
 
 
 
 #pp directors_totals(directors_database)
 # Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
   binding.pry
   coordinate_total = 0 
   row_index = 0 
  inner_length = director_data[:movies].length
 while row_index < inner_length do
  gross = director_data[:movies][row_index][:worldwide_gross]
  
  coordinate_total += gross
   
 row_index += 1 
end
#binding.pry
 coordinate_total
 end