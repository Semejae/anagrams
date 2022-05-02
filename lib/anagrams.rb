require('pry')

new_string = ''
vowels = ['a, e, i, o, u']

#1.Anagram is a word that has all the same letters of another word.
#2.Should have the same amount of the same letters.
#3.Needs to have a vowel.




class Words
  attr_accessor(:string1, :string2)
  def initialize(string1,string2)
    @string1 = string1
    @string2 = string2
  end

end
