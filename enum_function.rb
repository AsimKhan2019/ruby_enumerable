require_relative 'MyList'

list = MyList.new [1, 2, 3, 4]

list.all? { |e| e < 5 }
list.all? { |e| e > 5 }

list.any? { |e| e == 2 }
list.any? { |e| e == 5 }

list.filter(&:even?)
list.filter(&:odd?)
