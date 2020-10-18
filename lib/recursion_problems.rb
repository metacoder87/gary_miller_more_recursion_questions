p "Problem 1:"

def sum_recur(array)
    return array.first if array.count == 1
    array.first + sum_recur(array.drop(1))
end

p sum_recur([1,2,3]) # => 6
p sum_recur([1,2,3,4]) # => 10
p sum_recur([1,2,3,4,5]) # => 15

 p "Problem 2:" 

def includes?(array, target)
    return false if array.empty?
    array.first == target ? true : includes?(array.drop(1), target)
end

p includes?([1,2,3,4,5], 4) # => true
p includes?([1,2,3,4,5], 3) # => true
p includes?([1,2,3,4,5], 8) # => false

p "Problem 3:"  

def num_occur(array, target, count = 0)
    return count if array.count == 0
    array.first == target ? num_occur(array.drop(1), target, count += 1) : num_occur(array.drop(1), target, count)
end

p num_occur([1,2,3,4,5], 2) # => 1
p num_occur([1,2,2,3,4], 2) # => 2
p num_occur([1,3,4,5], 2) # => 0

p "Problem 4:" 

def add_to_twelve?(array)
    return false if array.length == 1 && array[0] != 12
    array[0] == 12 ? true : array[0] + array[1] == 12 ? true : add_to_twelve?(array.drop(1))
end

p add_to_twelve?([1,2,3]) # => false
p add_to_twelve?([1,2,3,9]) # => true
p add_to_twelve?([4,8,5,6,7]) # => true
p add_to_twelve?([8]) # => false
p add_to_twelve?([8,4]) # => true
p add_to_twelve?([12])  # => true

p "Problem 5:" 

def sorted?(array)
    return true if array.count < 2
    return array[0..1].sort == array[0..1] if array.length == 2
    array[0..1].sort != array[0..1] ? false : sorted?(array.drop(1))
end

p sorted?([1,2]) # => true
p sorted?([1,2,3]) # => true
p sorted?([1,2,3,4]) # => true
p sorted?([1,2,3,4,5]) # => true
p sorted?([1,8,2,3]) # => false
p sorted?([1,0,3]) # => false

# Problem 6: 

def reverse(string)
end
