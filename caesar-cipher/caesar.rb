def char_replace(letter, shift)
    char_ord_before = letter.ord
    char_ord_shift = char_ord_before + shift

    if char_ord_before.between?(65, 90)
        # Couldn't remember the modulo logic so had to steal it
        char_ord_after = (((char_ord_before - 65) + shift) % 26) + 65
    elsif char_ord_before.between?(97, 122)
        char_ord_after = (((char_ord_before - 97) + shift) % 26) + 97
    else
        char_ord_after = char_ord_before
    end
    
    char_ord_after.chr
end

def caesar_cipher(phrase, shift)
    phrase_array = phrase.split('')
    shifted_phrase_array = []
    phrase_array.each do |letter|
        shifted_phrase_array << char_replace(letter, shift)
    end
    return shifted_phrase_array.join('')
end

puts caesar_cipher("What a string!", 5)
puts caesar_cipher("What a string!", -7)