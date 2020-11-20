require 'pry'
# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  nil if name_hash.length == 0    #=> nil if hash is empty
  winner = {}   # empty hash for temporary lowest
  name_hash.each do |name, number|    # loop through each item in the hash
    if winner.length == 0   # if 1st time through, fill temp. lowest with key and value
      winner[:name] = name
      winner[:number] = number 
    # if != first pass, check if new number is lower, if true replace key and value
    elsif winner[:number] > number    
      winner[:name] = name  
      winner[:number] = number
    end
  end
  winner[:name]   #=> key `:name` of winner
end