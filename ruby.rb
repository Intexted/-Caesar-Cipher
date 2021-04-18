def caesar_cipher(str,shift=1)
    alphabet=("a".."z").to_a
    alphabet_upcase=("A".."Z").to_a
    caesar=""
    str.each_char do |letter| 
        if letter == " " || letter == "!" || letter == "."|| letter == ","
            caesar += letter
        else 
        if alphabet.include?(letter)
            old_indx = alphabet.find_index(letter) 
            new_indx = (old_indx + shift) % alphabet.count
            caesar += alphabet[new_indx]
        else
            old_indx = alphabet_upcase.find_index(letter)
            new_indx = (old_indx + shift) % alphabet.count
            caesar += alphabet_upcase[new_indx]
        end
        end
       end
       puts caesar
    end
    
    caesar_cipher("What a string!", 5)   
    