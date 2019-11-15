$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  director = 0
   totals = {}

   while director < nds.length do
     director_name = nds[director][:name]
     totals[director_name] = 0
     movie = 0

     while movie < nds[director][:movies].length do
       totals[director] += nds[director[:movies][movie][:wwide_gross]
       movie += 1
     end

     director += 1
   end

return totals
end
