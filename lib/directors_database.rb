require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

# code from previous lab
#  require 'pp'
# require 'directors_database'

# # Call the method directors_database to retrieve the NDS

# # directors_database
# def pretty_print_nds(nds)
#   # Change the code below to pretty print the nds with pp
  
#   pp nds
# puts nds 
# end

# def print_first_directors_movie_titles
#   movies = directors_database[0][:movies]
  
#   movies_row_index = 0 
  
#   while movies_row_index < movies.count do 
#   puts movies[movies_row_index][:title]
#     movies_row_index += 1 
#   end
# end
# #