require 'trie'

trie = Trie.new

dictionary = File.read("/usr/share/dict/words").split("\n")

dictionary.each do |word|
    trie.add word
end
