require('pry')

new_string = ''
vowels = ['a, e, i, o, u, y']

#1.Anagram is a word that has all the same letters of another word.
#2.Should have the same amount of the same letters.
#3.Needs to have a vowel.


new_string = ''

class Words
  attr_accessor(:string1, :string2)
  def initialize(string1,string2)
    @string1 = string1
    @string2 = string2
  end

  
  def vowel_check?()
  vowels = ['a', 'e', 'i', 'o', 'u', 'y']
  string_array = @string1.split(//)
  string_array.each do |letter|
    if vowels.include?(letter)
      return true
    end
  end
  return false

  end


end
