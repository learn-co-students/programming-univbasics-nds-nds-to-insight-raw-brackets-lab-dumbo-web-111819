$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  # require 'pp'
  # pp directors_database
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }

  director_index = 0
  while director_index < directors_database.length do
    gross = 0
    movie_index = 0
    director_movies = directors_database[director_index][:movies]
    while movie_index < director_movies.length do
      gross += director_movies[movie_index][:worldwide_gross]
      movie_index += 1
    end  
    director_name = directors_database[director_index][:name]
    result[director_name] = gross
    
    director_index += 1
  end
  result
end
