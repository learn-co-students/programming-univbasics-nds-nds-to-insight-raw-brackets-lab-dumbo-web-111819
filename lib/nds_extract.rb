$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'pry'
require 'pp'
require 'directors_database'
 def directors_totals(nds)
  result = {}
  director_names = []
 
  row_index = 0 
  grand_total = []
  while row_index < directors_database.count do 
     director_names.push(directors_database[row_index][:name])
  total = 0 
    # collect all the directors names in a variable 
    column_index = 0 
    while column_index < directors_database[row_index][:movies].count do 
      
       total+= directors_database[row_index][:movies][column_index][:worldwide_gross]
      # add each directors total gross
       column_index+=1 
    end
    grand_total.push(total)

    row_index+=1 

  end
  counter = 0 
  while counter < director_names.count do
  
  result[director_names[counter]] = grand_total[counter]
    counter+=1
    end
    result
end
 


  # add directors_database[0][:movies][row_index][ :worldwide_gross]
# runs through column_index and after row_index




# def movie_one
# total_gross = 0
# this_movie = 0 
#   while this_movie < directors_database[0][:movies].count do
#   director_person = 0 
# while director_person < directors_database.count do
# total_gross+= directors_database[0][:movies][this_movie][:worldwide_gross]
# this_movie+=1 
# end
# return total_gross
# end
# puts movie_one
# movie_one gives total gross of Steven Spielberg
# inner loop loops through films then adds them, outer loop loops through directors