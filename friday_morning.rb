#create a method that takes a string argument
#find a random word that starts with each letter from the array
#capitalize and concantenate each word to form the full sentence

class Acronym

  attr_reader :word_bank

  def initialize #when you want to create an object with a starting value add an argument here
    @word_bank = ["Aizoon", "Boone", "Demophoon", "Dioon", "Diplozoon", "Gaboon"]
  end

  # def word_bank #same thing as attr_reader
  #   @word_bank
  # end

  # def word_bank=(new_word_bank) #same things as attr_writer
  #   @word_bank = word_bank
  # end

  def acronymer(bad)
    #string = pineapple. a = Acronym.new
    #if you do a = Acronym.new
    #a.acronymer "pineapple"
    #thing in parens = variable that this method is required to have
    characters = bad.downcase.chars #this makes it an array
    matches = []
    characters.each do |letter| letter
      #if the letter matches the first letter of any word
      #from the word bank, return those words
      # --
      #want to find words in the word bank with a matching first letter
      #and put that word in the matches array
      # find all matches instead of one
      # use sample to get a random word (like rand but for arrays)
      all_matches = []
      all_matches << @word_bank.find { |word| word[0].downcase == letter }
      matches << all_matches.sample
    end
    return matches.join(", ")
  end
end

a = Acronym.new
puts a.acronymer("bad")
