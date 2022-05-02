require('rspec')
require('anagrams')

describe(Words) do
  describe('#initialize') do 
    it('it will recognize string1 and string2 as attributes') do
      anagram = Words.new('ruby', 'bury')
      expect(anagram.string1).to(eq('ruby'))
      expect(anagram.string2).to(eq('bury'))
    end
  end

  describe('#vowel_check?') do
    it('will return true if the string contains a vowel, else returns false') do
      anagram = Words.new('ruby', 'bury')
      not_words = Words.new('rb', 'br')
      expect(anagram.vowel_check?).to(eq(true))
      expect(not_words.vowel_check?).to(eq(false))
    end
  end
end