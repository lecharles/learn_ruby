require "pry"

#1 convert string to array
def split_into_array(word)
  word.split("")
end #RETURNS USER STRING INTO ARRAY: ["c", "h", "e", "r", "r", "y"]

#2 iterate through array & find first vowel in array => its index
def find_first_vowel(array)
  array.index { |vowel_index| ["a", "e", "i", "o", "u"].include? vowel_index }
end #RETURNS INTEGER CORRESPONDING TO INDEX OF 1ST VOWEL: 2

#3 grab all consonants before first vowel
def grab_consonants(array)
  i = find_first_vowel(array)
  consonants = array[0..(i-1)]
end #RETURNS ALL CONSONANTS BEFORE VOWEL IN AN ARRAY: ["c", "h"]

#5 push these consonants to end of array
def push_consonants(array)
  array = array.push(grab_consonants(array))
  # array.shift(find_first_vowel(array))
end #RETURNS AN ARRAY WITH CONSONANTS B4 VOWELS PUSHED AT THE END.

#6 push "ay" to end of string
def add_ay(array)
  array.push("ay")
end

#7 pop the consonants from array as they have been already pushed to the end
def pop_consonants(array)
  i = find_first_vowel(array)
  array.shift(i)
  array
end #THIS IS WHERE THE PROBLEM IS

#8 convert back array to string
def back_to_s(array)
  array.join("")
end

#9 make one final latin-translation method
def translate(word)
  # binding.pry
  split_array = split_into_array(word)
  vowel_index = find_first_vowel(split_array)
  consonants = grab_consonants(split_array)
  new_array = push_consonants(split_array)
  final_array = pop_consonants(new_array)
  ay_array = add_ay(final_array)
  translated_array = back_to_s(ay_array)
end
