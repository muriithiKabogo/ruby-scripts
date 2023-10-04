# split a string into an array based on a specified pattern


#split with no pattern expressed
myString = "Geeks for Geeks"
myArrray = myString.split

puts myArrray
puts myArrray.class

#split with a pattern and a limit

myArrray = myString.split(/ /, 2)
puts "This is how it looks like"

puts myArrray


#split with indefinite nunber

puts "this is what happens with -1"

myArrray = myString.split('s',-1)

puts myArrray
puts myArrray.length

