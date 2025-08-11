def caesar_cipher(string, shift_pos)
  shift_pos %= 26
  encrypted = string.chars.map do |char|
        if char.ord.between?("A".ord, "Z".ord)
          base_ord = "A".ord
          (((char.ord + shift_pos - base_ord)%26) + base_ord).chr
        elsif char.ord.between?("a".ord, "z".ord)
          base_ord = "a".ord 
          (((char.ord + shift_pos - base_ord)%26) + base_ord).chr
        else
          char
        end
  end 

  puts "The encrypted string is : #{encrypted.join}"
  
end





caesar_cipher("Hello World!", 3)