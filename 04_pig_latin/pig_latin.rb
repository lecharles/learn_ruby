def translate(word)
  final_string(word)
end

def check_1st_letter_vowel(word)
  if word.chars.first == ("a" || "e" || "i" || "o" || "u")
    first_letter_vowel = true
  else first_letter_vowel = false
  end
end

def grab_1st_consonant(word)
  word[0..0] if check_1st_letter_vowel(word) == false
end

def split_into_array(word)
  word.split("")
end

def take_consonant_at_end(word)
  new_word = split_into_array(word).push(grab_1st_consonant(word))
  new_word.shift
  new_word
end

def add_ay(word)
  word_to_array = split_into_array(word)
  word_to_array.push("ay")
end

def final_string(word)
  if check_if_vowel(word) == true
    add_ay(word).join("")
  else
    starts_with_consonant = take_consonant_at_end(word)
    starts_with_consonant.push("ay").join("") #temporary solution
  end
end
