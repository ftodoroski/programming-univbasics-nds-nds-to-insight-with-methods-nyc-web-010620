require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}

end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_gross = 0

  i = 0
  while i < director_data[:movies].length
    worldwide_gross = director_data[:movies][i][:worldwide_gross]
    total_gross += worldwide_gross
    i += 1
  end

  # pp total_gross
end

# gross_for_director(directors_database)
