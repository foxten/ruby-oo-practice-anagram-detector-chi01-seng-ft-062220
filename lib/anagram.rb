class Anagram
    attr_accessor :word
    
    def initialize(word)
        @word = word
    end

    def match(possible_matches)
        actual_matches = []
        separated = possible_matches.map{|entry| entry.split(//)}
        separated.each do |match|
          if match.size == word.size && match.sort == word.split(//).sort
            actual_matches << match.join("")
          end
        end
        actual_matches
    end
end

on = Anagram.new("on")
possible_matches = ["hello", "goodbye", "yes", "no"]

