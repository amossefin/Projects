require 'pry'
require 'minitest/autorun'
require 'minitest/pride'


class BubbleSort

  attr_reader :letters

  def initialize (letters)
    @letters = letters
  end
#binding.pry
  def sorter(letters)
    x = 0
    while letters != letters.sort
      if letters[x] > letters[x+1]
        letters[x] = letters[x+1]
        letters[x+1] = letters[x]
        x += 1
      else
        x += 1
      end
    end
  end
end

letters = BubbleSort.new("mdnsgcjdge")

puts letters.sorter




# =====  Starting Spot:  =====
#a = ["e", "a", "c", "b", "d"]
#b = 0

#while b < a.length
#  c = 0
#  d = 1

#  while d < a.length
#    e = a[c]
#    f = a[d]
#    if f < e
#      a[c]  = f
#      a[d] = e
#    end
#    c += 1
#    d += 1
#  end

#  b += 1
#end
