def caesar_cipher(string, shift_pos)
  
  input = string.split('')
  if shift_pos > 0
    output = right_shift(input, shift_pos)
  else
    output = left_shift(input, shift_pos.abs)
  end

  puts "The encrypted string is : #{output.join}"
  
end


def left_shift(array, shift_pos)
  output = []
  array.each do |character|
    if character.ord.between?("A".ord, "Z".ord)
      shifted = character.ord - shift_pos
      shifted += 26 if shifted < "A".ord
      output << shifted.chr
    elsif character.ord.between?("a".ord, "z".ord)
      shifted = character.ord - shift_pos
      shifted += 26 if shifted < "a".ord
      output << shifted.chr
    else
      output << character
    end
    
  end
  return output
end

def right_shift(array, shift_pos)
  output = []
  array.each do |character|
    if character.ord.between?("A".ord, "Z".ord)
      shifted = character.ord + shift_pos
      shifted -= 26 if shifted > "Z".ord
      output << shifted.chr
    elsif character.ord.between?("a".ord, "z".ord)
      shifted = character.ord + shift_pos
      shifted -= 26 if shifted > "z".ord
      output << shifted.chr
    else
      output << character
    end
    
  end
  return output
end


caesar_cipher("Hello World!", 3)