#Methodology

# For each of the methods listed below
# 1. Read the docs
# 2. Try out the method in irb using a few different values
# 3. Once you feel like you understand how it works, write down its arguments (name, data type, optional/required, default value if any), its return type
# 4. Write an example (in code) of how to use the method
# 5. Run your code to make sure your example is valid!

def a_good_method
   1 + 1
end

a_good_method
puts puts a_good_method


puts "-----length------"

#function: returns the character length of the string

#arguments: applies to an object, i.e. STRING and returns an INTEGER.

#examples:

puts ("hello world").length
c = "hello"
puts c.length


puts "-----strip-----"

#function: removes from the string any leading or trailing spaces produced by tab, line feed, space, carriage return etc.

#arguments: mostly applies to human objects and STRINGs and returns STRINGs.

#examples:

puts "Hel lo world   !
    ".strip


puts "-----split-----"

#function: divides the string into substrings based on the delimiter and LIMIT parameters

#arguments: only applies to STRINGs and returns an array of substrings. Argument 1 is a delimiter with default value NIL, i.e. division by the whitespace in between.
# the second argument - LIMIT - is optional. If omitted, trailing null fields are omitted, if positive, the LIMIT signifies the number of substrings returned,
# if negative - no limit of fields returned, trailing null fields not suppressed. If LIMIT = 1, entire string is returned.

#examples:
hello = "hello, world".split(" ",1)
puts hello


puts "-----start_with?-----"

#function: matches beginning of the evaluated string to the string in the arguments,
# arguments: a string to match, required. returns a boolean, hence the ? mark.

#examples:

puts "Humphrey Appleby".start_with?("Humpy") #gives FALSE
puts "Humphrey Appleby".start_with?("Hum") #gives TRUE
puts "Humphrey Appleby".start_with?("hum") #gives FALSE


puts "-----first-----"

#function: applies to arrays and returns first element(s) of the array.
#arguments: argument is optional and in the form of integer. If omitted, the first element is returned, else the number of elements indicated in the argument.
#examples:

test_first = ["zero", 1, "two", 3]
puts test_first.first
puts test_first.first(3)


puts "-----delete_at-----"

#function: deletes the element of array at the specified index in the argument.
# arguments: required, index of the array. NB: returns the elements itself, not the new array, or NIL if the index is out of range.
# examples:

test_delete_at = ["zero", 1, "two", 3]
puts test_delete_at.delete_at(0)
puts test_delete_at.delete_at(3).inspect


puts "-----delete-----"

#function: deletes all elements from the array that match the argument.
#arguments: required one argument, an element of the data type as the array (integer, string, boolean etc.), returns the last deleted item or nil if no matching item is found.
#examples:

test_delete = ["zero", 1, "two", 3]
puts test_delete.delete(1)


puts "-----pop-----"

#function: removes the last element of the array
#arguments: argument is optional, if omitted returns the last element, otherwise the no. of elements specified in the argument (integer). Returns the last removed elements.
#examples:

test_pop = ["zero", 1, "two", 3]
puts test_delete.pop
puts test_delete.pop(2)
puts test_pop


puts "-----to_a-----"

#function: converts hash to a nested array of [k, v] arrays.
#arguments: takes a hash as an object.
#examples:

test_hash_ministry = {:minister => "Jim Hacker", :permanent_secretary => "Humphrey Appleby", :private_secretary=> "Bernard Woolley"}
puts test_hash_ministry.to_a


puts "-----has_key?-----"

#function: returns TRUE if the key is present in the hash
#arguments: required, key (data type of the key in the hash), returns a boolean
#examples:

test_hash_ministry = {:minister => "Jim Hacker", :permanent_secretary => "Humphrey Appleby", :private_secretary=> "Bernard Woolley"}
puts test_hash_ministry.has_key?(:private_secretary) #TRUE
puts test_hash_ministry.has_key?("private_secretary") #FALSE


puts "-----has_value?-----"

#function: analogue of "has_key?" for values, returns TRUE is value is present in the hash
#arguments: required, value (data type of the key in the hash), returns a boolean
#examples

test_hash_ministry = {:minister => "Jim Hacker", :permanent_secretary => "Humphrey Appleby", :private_secretary=> "Bernard Woolley"}
puts test_hash_ministry.has_value?("Jim Hacker") #TRUE


puts "-----now-----"

#function: creates a TIME object based on given arguments
#arguments: optional. If omitted, gives present time, otherwise, returns times based on the arguments specified: year, month, dat, hour, min, second, second with fraction).
#examples:

puts Time.now
puts Time.utc(1986,4,26,5,30,13)


puts "-----exist?-----"

#function: returns TRUE/FALSE if the file exists
#arguments: required = filename. Returns a boolean.
#examples:

puts File.exist?("/home/constantine/Documents/bitmaker/assignments/ruby-research-technical-documentation/research_techdoc.rb") #returns TRUE




puts "-----extname-----"

#function: returns the extension of the file
#arguments: required, the path of the file in the form of a string. Returns the portion after the period or NIL if the period is missing
#examples:

puts File.extname("ruby-research-technical-documentation/research_techdoc.rb") #returns .rb
