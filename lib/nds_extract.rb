$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  idx1 = 0
  while idx1 < directors_database.length
    sum=0
    idx2 = 0
    while idx2 < directors_database[idx1][:movies].length
      # p director_database[idx1][:movies][idx2][:worldwide_gross]
      sum += directors_database[idx1][:movies][idx2][:worldwide_gross]
      idx2 +=1
    end
    result[directors_database[idx1][:name]] = sum
    idx1 +=1
  end
  result
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
end
