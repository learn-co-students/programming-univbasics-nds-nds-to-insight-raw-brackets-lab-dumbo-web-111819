$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
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
director_names = nds[1][:name]
result[director_names] = 0
i = 0
director_names = nds[0][:name]
result[director_names] = 0
while i < 6 do 
    result[director_names] = result[director_names] + nds[0][:movies][i][:worldwide_gross]
    i += 1 
end
result 
director_names = nds[1][:name]
result[director_names] = 0

i = 0 
while i < 6 do 
    result[director_names] = result[director_names] + nds[1][:movies][i][:worldwide_gross]
    i += 1 
end
  result 
  
  
  director_names = nds[2][:name]
result[director_names] = 0

i = 0 
while i < 7 do 
    result[director_names] = result[director_names] + nds[2][:movies][i][:worldwide_gross]
    i += 1 
end
  result 
  
director_names = nds[3][:name]
result[director_names] = 0

i = 0 
while i < 5 do 
    result[director_names] = result[director_names] + nds[3][:movies][i][:worldwide_gross]
    i += 1 
end
  result 
  
director_names = nds[4][:name]
result[director_names] = 0

i = 0 
while i < 6 do 
    result[director_names] = result[director_names] + nds[4][:movies][i][:worldwide_gross]
    i += 1 
end
  result 
  
director_names = nds[5][:name]
result[director_names] = 0

i = 0 
while i < 6 do 
    result[director_names] = result[director_names] + nds[5][:movies][i][:worldwide_gross]
    i += 1 
end
  result 

director_names = nds[6][:name]
result[director_names] = 0

i = 0 
while i < 6 do 
    result[director_names] = result[director_names] + nds[6][:movies][i][:worldwide_gross]
    i += 1 
end
  result 

director_names = nds[7][:name]
result[director_names] = 0

i = 0 
while i < 6 do 
    result[director_names] = result[director_names] + nds[7][:movies][i][:worldwide_gross]
    i += 1 
end
  result 
  
director_names = nds[8][:name]
result[director_names] = 0

i = 0 
while i < 6 do 
    result[director_names] = result[director_names] + nds[8][:movies][i][:worldwide_gross]
    i += 1 
end
  result 
  
  
end 
