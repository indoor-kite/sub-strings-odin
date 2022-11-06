
def substrings(searchString, dictionary)
    matches=Hash.new(0)
    searchArray=searchString.downcase.split(" ")
    
    
    searchArray.each{|search_word|
        dictionary.each {|dictionary_word|
            if search_word.include? dictionary_word
                matches[dictionary_word]+=1
            end
        }
    }

    puts matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)