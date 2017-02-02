#Complete Me Project
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

#create CompleteMe class
class CompleteMe

    attr_accessor :dictionary, :new_hash

    def initialize
        @dictionary = []
        @new_hash = Hash.new(0)
    end

    def insert word
        if (@dictionary.count(word)) != 0
            puts "Sorry, that word is already in the dictionary"
        else
            @dictionary << word
        end
    end
    
    def populate words
        (words.split("\n")).each do |word|
            #self.insert(word)
            @dictionary << word
        end
    end

    def insert_words words
        words.each do |word|
            self.insert(word)
        end
    end

    def count
        puts @dictionary.count
    end

    def suggest root
        size = (root.length - 1)
        #name = (word + root)
        @dictionary.select do |word|
            word[0..size] == root
        end
    #        _.sort
     #       name = (root + (x.to_s))
      #      puts @new_hash[name]
       # end 
    end

    def select (root, word)
        combo = (root + word)
        @new_hash[combo] +=1
    end    

    def remove word
        @dictionary.delete(word)
    end
end


#binding.pry

""