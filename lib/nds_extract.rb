require 'directors_database'
require 'pp'

def directors_totals(nds)
  result = {}

  i = 0
  while i < nds.length
    director_name = nds[i][:name]
    director_data = nds[i]
    result[director_name] =  gross_for_director(director_data)

    i += 1
  end

  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  # pp director_data
  total_gross = 0

  i = 0
  while i < director_data[:movies].length
    worldwide_gross = director_data[:movies][i][:worldwide_gross]
    total_gross += worldwide_gross
    i += 1
  end

  total_gross
end

# gross_for_director(directors_database)
