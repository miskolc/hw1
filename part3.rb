def combine_anagrams(words)
    hash = {}
    table = []
    no_of_anagrams=-1
    words.each do |word|
        anagram = word.downcase.split("").sort.join
        if hash[anagram].nil?
            no_of_anagrams += 1
            hash[anagram] = no_of_anagrams
            table[no_of_anagrams]=[]
        end
        table[hash[anagram]] = table[hash[anagram]] + [word]    

    end
    table
    #print table 
end


#combine_anagrams ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] 