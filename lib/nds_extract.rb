$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# def directors_totals(nds)
#   # Remember, it's always OK to pretty print what you get *in* to make sure
#   # that you know what you're starting with!
#   #
#   #
#   # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
# # result = {
# # }
#   #
#   # Use loops, variables and the accessing method, [], to loop through the NDS
#   # and total up all the
#   # ...
#   # ...
#   # ...
#   #
#   #
#   # Be sure to return the result at the end!
#   # nil
  
# result = {}

# spielberg_index = 0


# spielberg_gross = 0
# count = 0
# index = nds[spielberg_index][:movies].length

# while count < index do
#   movie_gross = nds[spielberg_index][:movies][0][:worldwide_gross]
#   spielberg_gross += movie_gross
#   puts spielberg_gross
#   count += 1
# end
# spielberg_gross
# end

def directors_totals(nds)

  result = {}

  dir_index = 0
  count_outer = 0
  index_outer = nds.length
  
  while count_outer < index_outer do
    dir_gross = 0
    count_inner = 0
    index_inner = nds[dir_index][:movies].length
    while count_inner < index_inner do
      dir_gross += nds[dir_index][:movies][count_inner][:worldwide_gross]
      count_inner += 1
    end

    puts dir_index
    puts dir_gross
    dir_index += 1
    count_outer += 1

    if dir_index == 1
      result["Stephen Spielberg"] = dir_gross
    elsif dir_index == 2
      result["Russo Brothers"] = dir_gross
    elsif dir_index == 3
      result["James Cameron"] = dir_gross
    elsif dir_index == 4
      result["Spike Lee"] = dir_gross
    elsif dir_index == 5
      result["Wachowski Siblings"] = dir_gross
    elsif dir_index == 6
      result["Robert Zemeckis"] = dir_gross
    elsif dir_index == 7
      result["Quentin Tarantino"] = dir_gross
    elsif dir_index == 8
      result["Martin Scorsese"] = dir_gross
    elsif dir_index == 9
      result["Francis Ford Coppola"] = dir_gross
    end
    
  end
  result
end
