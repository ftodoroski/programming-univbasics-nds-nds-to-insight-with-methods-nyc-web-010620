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
  while i < director_data.length
    worldwide_grosses = director_data[:movies][i][:worldwide_grosses]

    total_gross += worldwide_grosses

    i += 1
  end

  total_gross
end
