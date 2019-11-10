  
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  pp directors_database
  
  result = {}
  row_index = 0 
  
  while row_index < nds.length do 
    result[nds[row_index][:name]] = 0
    element_index = 0
    
    while element_index < nds[row_index][:movies].length do
      result[nds[row_index][:name]] += nds[row_index][:movies][element_index][:worldwide_gross]
      element_index += 1
    end
    
    row_index += 1
  end
  
  result
end






