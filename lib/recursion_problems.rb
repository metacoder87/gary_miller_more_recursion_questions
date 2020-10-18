#Problem 1: 

def sum_recur(array)
    return array.first if array.count == 1
    array.first + sum_recur(array.drop(1))
end

p sum_recur([1,2,3]) # => 6
p sum_recur([1,2,3,4]) # => 10
p sum_recur([1,2,3,4,5]) # => 15

#Problem 2: 

def includes?(array, target)
    return false if array.empty?
    array.first == target ? true : includes?(array.drop(1), target)
end

p includes?([1,2,3,4,5], 4) # => true
p includes?([1,2,3,4,5], 3) # => true
p includes?([1,2,3,4,5], 8) # => false

# Problem 3:  

def num_occur(array, target, count = 0)
    return count if array.count == 0
    array.first == target ? num_occur(array.drop(1), target, count += 1) : num_occur(array.drop(1), target, count)
end

p num_occur([1,2,3,4,5], 2) # => 1
p num_occur([1,2,2,3,4], 2) # => 2
p num_occur([1,3,4,5], 2) # => 0

# Problem 4: 

def add_to_twelve?(array)
end

# Problem 5: 

def sorted?(array)
end

# Problem 6: 

def reverse(string)
end
