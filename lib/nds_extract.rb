$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  pp directors_database
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  dir_index = 0 
  while dir_index < nds.length do 
    dir_name = nds[dir_index][:name]
    dir_movies = nds[dir_index][:movies]
    movies_index = 0 
    result[dir_name] = 0 
    while movies_index < dir_movies.length do 
      result[dir_name] += dir_movies[movies_index][:worldwide_gross]
      movies_index += 1 
    end 
    dir_index += 1 
  end 
  result
end









