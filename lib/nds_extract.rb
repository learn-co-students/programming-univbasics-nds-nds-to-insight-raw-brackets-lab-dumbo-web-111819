$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # pp nds
  # movies = nds[0][:worldwide_gross]
  counter = 0 
  total = {}
  while counter < nds.length do 
    director_hash = nds[counter]
  director_name = nds[counter][:name]
  total[director_name] = 0
  director_movies = director_hash[:movies]
  while counter < director_movies.length do
  
  end 
   counter +=1
end
  # counter = 0 
  # grand_total = 0 
  # while counter < movies.length do 
  #   grand_total +=[0][:worldwide_gross] 
    
  #   puts directors_database[0][:worldwide_gross]
  #   counter +=1
  #   return movies
  #   p grand_total
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
   result = { 
   }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  # nil
# end


