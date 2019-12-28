$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  i = 0 
  hash = {} 
  while i < nds.length do 
    directors = nds[i][:name]
    j = 0
    total = 0 
    while j < nds[i][:movies].length do
      total += nds[i][:movies][j][:worldwide_gross]
      j += 1 
    end 
    i += 1
    print directors
    print total 
  end 
end 