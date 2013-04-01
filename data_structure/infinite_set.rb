#encoding: utf-8

singleton = lambda {|elem| lambda {|element| elem == element } }

contains = lambda {|set, element| set.(element) }

union = lambda {|set1, set2| lambda {|element| set1.(element) || set2.(element) } }

one = singleton.(1)
two = singleton.(2)

set = union.(one, two)

puts "[1] U [2], 1 está na lista resultado? #{contains.(set, 1)}"
puts "[1] U [2], 2 está na lista resultado? #{contains.(set, 2)}"

pairs = lambda {|element| element % 2 == 0 }

puts "2 está na lista dos pares? #{contains.(pairs, 2)}"
puts "3 está na lista dos pares? #{contains.(pairs, 3)}"
puts "1000 está na lista dos pares? #{contains.(pairs, 1000)}"
