require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nil
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  result = {}

  i = 0
  while i < nds.length
      director_movies = nds[i][:movies]
      director_name = nds[i][:name]
      gross_total = 0

      j = 0
      while j < director_movies.length
          worldwide_gross = director_movies[j][:worldwide_gross]
          gross_total += worldwide_gross

          j += 1
      end
      
      result[director_name] = gross_total
      i += 1
  end

  result

end
