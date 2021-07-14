
def sort_array_asc(array)
    array.sort #sorts in ascending order
end

def sort_array_desc(array)
    array.sort do |a, b|
        b <=> a #sorts in descending order
    end
end

def sort_array_char_count(array)
    array.sort_by { |string| string.length } #this sorts the array by length
end

def swap_elements(array) 
    array[1],  array[2] = array[2], array[1] #this will swap the first index and second index
    array   #then you need to return the array
end

def swap_elements_from_to(array, index, destination_index)

end

def reverse_array(array)
    array.reverse #reverses an array
end

def kesha_maker(array)
    new_array = []
    new_array.concat(array) # copy everything from one array to the other
    new_array.map { |word| word.slice!(2)} #slice out the scond index element from the string
    new_array.map { |word| word.insert(2, '$')} #insert the dollar sign into the string at second index
    new_array #return the modified array
end

def find_a(array)
    array.select {|word| word.start_with?('a')} # finds all the words that starts with a
end

def sum_array(array)
    array.inject { |sum,x| sum + x} # sums up all the numbers in an array
end

def add_s(array)
    word = [] #make an empty array
    new_array = [] #make an empty array
    new_array.concat(array) #copy the array
    word.concat(array) #copy the array
    sliced_word = word.slice(1) #remove the word at index 1 to new variable
    new_array.delete_at(1) #delete index 1 from array
    final_array = new_array.map {|word| word + 's'} #add s to all the strings
    final_array.insert(1, sliced_word) # insert the word we sliced back into array
    
end