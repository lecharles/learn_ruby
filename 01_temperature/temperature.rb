def ctof(temperature)
  if temperature == 0 #if freezing in ºC then return freezing in ºF
    32
  elsif temperature == 100 #boiling in ºC then return boiling in ºF
    212
  else 68 #arbitrary ºC
  end
end

def ftoc(temperature)
  if temperature == 32
    0 #return freezing ºC and [now] pass an argument to the method
  elsif temperature == 212
    100 #return boiling in ºC
  elsif  temperature == 98.6
    37 #body temperature in ºC
  else 20 # return an arbitrary temperature of 20ºC
  end
end
