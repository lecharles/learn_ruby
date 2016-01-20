require "pry"

#convert string to array
def split_into_array(word)
  word.split("")
end

#iterate through array & find first vowel in array => its index
def find_first_vowel(array)
  array.index { |vowel_index| ["a", "e", "i", "o", "u"].include? vowel_index }
end #RETURNS INTEGER CORRESPONDING TO INDEX OF 1ST VOWEL

def rotate_at_vindex(array)
  vindex = find_first_vowel(array)
  array.rotate(vindex)
end

#push "ay" to end of string
def add_ay(array)
  array.push("ay")
end

#convert back array to string
def back_to_s(array)
  array.join("")
end

#make one final latin-translation method
def translate(word)
  # binding.pry
  split_array = split_into_array(word)
  rotated_array = rotate_at_vindex(split_array)
  ay_array = add_ay(rotated_array)
  final_array = back_to_s(ay_array)
end
