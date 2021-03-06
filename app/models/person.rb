class Person < ApplicationRecord
 def asciify
    #merge first and last name AND add a space between as per example in spec 
    string = firstname + " " + lastname
    #take each character and convert to ascii value in an array then fiond the sum of the array 
    ascii = string.chars.map(&:ord).inject(:+)
    ascii 
 end

 def binarify
    string = firstname + " " + lastname
    #take each character and convert to ascii value in an array
    #find the sum of the array and convert to a base 2 string 
    binary = string.chars.map(&:ord).inject(:+).to_s(2) 
    binary
 end

 def countZeros
    string = firstname + " " + lastname
    binary = string.chars.map(&:ord).inject(:+).to_s(2) 
    max = 0
    count = 0
    binary.chars.each do |char|
        if char == "0"
            count += 1
        else
            count = 0
        end
        #max equals max or count depending on which on is the largest 
        max = [max, count].max
    end
    max
 end

end
