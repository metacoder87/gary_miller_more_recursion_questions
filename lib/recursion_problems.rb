            # meta_coder (Gary Miller) =)
            # gmiller052611@gmail.com
            # https://github.com/metacoder87/gary_miller_more_recursion_questions/blob/master/lib/recursion_problems.rb


puts "Problem 1:"

def sum_recur(array)
    return array.first if array.count == 1
    array.first + sum_recur(array.drop(1))
end

puts "              #{sum_recur([1,2,3])}" # => 6
puts "              #{sum_recur([1,2,3,4])}" # => 10
puts "              #{sum_recur([1,2,3,4,5])}" # => 15

 puts "Problem 2:" 

def includes?(array, target)
    return false if array.empty?
    array.first == target ? true : includes?(array.drop(1), target)
end

puts "              #{includes?([1,2,3,4,5], 4)}" # => true
puts "              #{includes?([1,2,3,4,5], 3)}" # => true
puts "              #{includes?([1,2,3,4,5], 8)}" # => false

puts "Problem 3:"  

def num_occur(array, target, count = 0)
    return count if array.count == 0
    array.first == target ? num_occur(array.drop(1), target, count += 1) : num_occur(array.drop(1), target, count)
end

puts "              #{num_occur([1,2,3,4,5], 2)}" # => 1
puts "              #{num_occur([1,2,2,3,4], 2)}" # => 2
puts "              #{num_occur([1,3,4,5], 2)}" # => 0

puts "Problem 4:" 

def add_to_twelve?(array)
    return false if array.length == 1 && array[0] != 12
    array[0] == 12 ? true : array[0] + array[1] == 12 ? true : add_to_twelve?(array.drop(1))
end

puts "              #{add_to_twelve?([1,2,3])}" # => false
puts "              #{add_to_twelve?([1,2,3,9])}" # => true
puts "              #{add_to_twelve?([4,8,5,6,7])}" # => true
puts "              #{add_to_twelve?([8])}" # => false
puts "              #{add_to_twelve?([8,4])}" # => true
puts "              #{add_to_twelve?([12])}"  # => true

puts "Problem 5:" 

def sorted?(array)
    return true if array.count < 2
    return array[0..1].sort == array[0..1] if array.length == 2
    array[0..1].sort != array[0..1] ? false : sorted?(array.drop(1))
end

puts "              #{sorted?([1,2])}" # => true
puts "              #{sorted?([1,2,3])}" # => true
puts "              #{sorted?([1,2,3,4])}" # => true
puts "              #{sorted?([1,2,3,4,5])}" # => true
puts "              #{sorted?([1,8,2,3])}" # => false
puts "              #{sorted?([1,0,3])}" # => false

puts "Problem 6:" 

def reverse(string)
    return string if string.length == 1
    string[-1] + reverse(string.chop)
end

puts "              #{reverse("string")}" # => gnirts
puts "              #{reverse("texas")}" # => saxet
puts "              #{reverse("san fran")}" # => narf nas
puts "              #{reverse("austin")}" # => nitsua


            # meta_coder (Gary Miller) =)
            # gmiller052611@gmail.com
            # https://github.com/metacoder87/gary_miller_more_recursion_questions/blob/master/lib/recursion_problems.rb