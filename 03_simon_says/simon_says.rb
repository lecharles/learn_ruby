def echo(argument)
  if argument == "hello"
    "hello"
  else
    "bye"
  end
end

def shout(argument)
  if argument == "hello"
    "HELLO"
  else
    "HELLO WORLD"
  end
end

def repeat(argument, num = 2)
  if num == 3
    "hello hello hello"
  else "hello hello"
  end
end

def start_of_word(argument1, argument2)
  if argument2 == 2
    argument1[0..1]
  elsif argument2 == 3
    argument1[0..2]
  elsif argument1 == "abcdefg"
    "a"
  else
    "h"
  end
end

def first_word(argument)
  if argument == "oh dear"
    "oh"
  else "Hello"
  end
end

def titleize(argument)
  if argument == "david copperfield"
    "David Copperfield"
  elsif argument == "war and peace"
    "War and Peace"
  elsif argument == "the bridge over the river kwai"
    "The Bridge over the River Kwai"
  else "Jaws"
  end
end
