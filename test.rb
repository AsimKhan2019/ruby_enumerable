require 'pry'

list = [5, 7, 8, 9]

list.all? { |e| e < 10 }
list.all? { |e| e > 10 }
binding.pry
list.any? { |e| e == 2 }
list.any? { |e| e == 5 }
list.filter(&:even?)
list.filter(&:odd?)
