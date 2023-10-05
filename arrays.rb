# Array challenges based on https://www.w3resource.com/ruby-exercises/array/index.php

# 1. Write a Ruby program to check whether a value exists in an array.

puts "Question 1"
def checker(theValue)
	x = ["Green", "yellow", "blue"]

	if x.include?(theValue)
    puts "True"
  else
    puts "False"
  end
end

checker("Green")
checker("Red")

# Write a Ruby program to check whether 7 appears as either the first or last element in a given array. 
# The array length must be 1 or more.
puts "Question 2"
def checker2(theArray)

	if theArray[-1] == 7 || theArray[0] == 7
		puts "True"
	else
		puts "False"
	end
end

checker2([7,4,5,6])
checker2([5,4,5,7])
checker2([9,7,5,1])

# 3. Write a Ruby program to pick number of random elements from a given array.
puts "Question 3"

def picker(theArray, number_of_elements1, number_of_elements2)
	#check that the array size contains the number of elements in order to be random

	if number_of_elements1 && number_of_elements2 <= theArray.length
		random_numbers1 = theArray.sample(number_of_elements1)
		random_numbers2 = theArray.sample(number_of_elements2)
	else
		puts "there number of elements to pick exceeds the elements in the array"
	end

	puts"original array:  #{theArray}"
	puts "2 random elements from the array #{random_numbers1}"
	puts "3 random elements from the array #{random_numbers2}"

end


picker([1,2,3,4,5,6,7,8,9], 2,3)


#4. Write a Ruby program to check whether first and the last element are the same of a given array of integers.
#The array length must be 1 or more.

#we have an array,first element and last element
puts "Question 4"

def checker3(theArray)
	if theArray.size >= 1
		puts theArray[0] == theArray[-1]
	else
		print "Your array needs more than one element"
	end
end
checker3 ([1,2,3,4,5])
checker3 ([5,2,3,4,5])
checker3 ([5,2,3,4,1])

# 5. Write a Ruby program to compute the sum of elements in a given array.

puts "Question 5"

#we have an array and sum

def compute_sum(theArray)
	sum = 0
	theArray.map{|e| sum = sum + e }

	puts "Original array"
	print "#{theArray}\n" 

	puts "Sum of the values of the above array:\n"
	puts sum
end

compute_sum ([12, 34, 23, 56])



#  6. Write a Ruby program to remove duplicate elements from a given array.
# we have an array and duplicates

puts "Question 6"

def remove_duplicates(theArray)
	
	puts "Original array:"
	puts "#{theArray}\n"
 	puts "Array with unique elements:"
	print "#{theArray.uniq}\n"
end


remove_duplicates([1, 2, 3, 4, 1, 2, 2, 3, 5, 6])


#7. Write a Ruby program to check two given arrays of integers and test whether they have the same first element or 
#they have the same last element.Both arrays length must be 1 or more.

puts "Question 7"

def checker4(theArray1,theArray2)
	if (theArray1[0] == theArray2[0] || theArray1[-1] == theArray2[-1]) && theArray1.length >= 1 && theArray2.length >= 1
		puts "true"
	else
		puts "False"
	end

end

checker4([1,4,6,8],[1, 5,6])
checker4([2,4,6,8],[1, 5,6])
checker4([2,4,6,8],[1, 5,8])



#8. Write a Ruby program to remove blank elements from a given array.

puts "Question 8"

def remove_blanks(theArray)
	
theArray2 = theArray.reject { |e| e.empty?}

	print "Original array:\n"
	print "#{theArray}\n"
	print"Remove blank element from the above array:\n"
	print "#{theArray2}\n"
end


 remove_blanks(["Red", "Green", "", "Blue", "White"])


#9. Write a Ruby program to compute the sum of all the elements. The array length must be 3 or more.

puts "Question 9"

def compute_sum2(theArray)
	sum = 0

	if theArray.length >=3
		theArray.map { |e| sum = sum+e  }
		puts sum
	else
		puts "The array length must be 3 or more"
	end

end

compute_sum2([2,2,2,2])
compute_sum2([2,2,2])
compute_sum2([2,2,2,1])







