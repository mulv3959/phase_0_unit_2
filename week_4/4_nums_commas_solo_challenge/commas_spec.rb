# require_relative "my_solution" 
#=> Make sure you change this to the name of your code file! Save that file
# into this repo. 

def separate_comma(integer)
   string = []
   integer = integer.to_s.reverse.split(//).to_a.each_slice(3){|a| string << a}
   string.map{|i| 
      if i.length == 3
            i.push(',')
      end}
   solution = string.join.reverse
      if solution.start_with?(',')
        solution[0] = ''
      end
   puts solution.inspect
end

def random_num(min, max)
   rand(max - min + 1) + min
end

describe "separate_comma" do
   it "returns no comma, when the integer is smaller than 1000" do
      separate_comma(random_num(0, 999)).should_match /^\d{1,3}$/
   end
   it "returns one comma, when the integer is between 1000 and 999999" do
      separate_comma(random_num(1000, 999999)).should_match /^\d{1,3},\d{3}$/
   end
   it "returns two commas, when the integer is between 1000000 and 999999999" do
      separate_comma(random_num(1000000, 999999999)).should_match /^\d{1,3},\d{3},\d{3}$/
   end
end
