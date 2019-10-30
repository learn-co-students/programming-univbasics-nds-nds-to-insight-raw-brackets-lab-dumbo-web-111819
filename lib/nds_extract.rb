$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  array = directors_database
  i = 0 
  result = {}
  
  while i < array.length do
    obj =  array[i]
    name_key = obj[:name]
    movie_arr = obj[:movies]
    p movie_arr
    j =  0 
  
  while j < movie_arr.length 
    obj2 = movie_arr[j]
    value = obj2[:worldwide_gross]
    
    if result[name_key] == nil
      result[name_key] = value 
    else 
      result[name_key] += value
    end
    
  j += 1
  end
    i+= 1
  end
 result
end
