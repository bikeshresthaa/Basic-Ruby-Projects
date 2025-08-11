dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, list)
  string = string.gsub(/[^a-zA-Z\s]/, " ")
  input = string.downcase.split(" ")

  list.reduce(Hash.new(0)) do |result, valid_word|
    input.each do |input_value|
      if input_value.include?(valid_word)
        result[valid_word] += 1
      end
    end
    result
  end
end


puts substrings("Howdy partner, sit down! How's it going?", dictionary)