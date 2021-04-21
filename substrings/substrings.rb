dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)
    string = string.downcase
    
    dict.reduce(Hash.new(0)) do |result, word|
        result[word] += string.scan(word).length if string.include? word
        result
    end
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)