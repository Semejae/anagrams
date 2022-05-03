require('rspec')
require('anagrams')

describe(Words) do
  describe('#initialize') do 
    it('it will recognize string1 and string2 as attributes') do
      anagram = Words.new('ruby', 'bury')
      expect(anagram.string1).to(eq(['b','r','u','y']))
      expect(anagram.string2).to(eq(['b','r','u','y']))
    end
  end

  describe('#split')do
    it ('will use a long chain of methods to change the given string into an alphabetical array with no spaces or punctuation and is lowercase') do
      object = Words.new('Is a sentence!','ruby')
      expect(object.string1).to(eq(["a", "c", "e", "e", "e", "i", "n", "n", "s", "s", "t"]))
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

  # describe('#anti_gram_check?') do 
  #   it('will see if the given strings have no letters in common') do
  #     anagram = Words.new('ruby', 'bury')
  #     anti = Words.new('art', 'cow')
  #     neither = Words.new('art', 'arc')
  #     expect(anagram.anti_gram_check?).to(eq(false))
  #     expect(anti.anti_gram_check?).to(eq(true))
  #     expect(neither.anti_gram_check?).to(eq(false))
  #   end
  # end

  # describe('#anagram_check?') do
  #   it('will check to see if two words are anagrams') do
  #     anagram = Words.new('ruby', 'bury')
  #     not_anagram = Words.new('cat', 'rat')
  #     also_not = Words.new('ctrg', 'grtc')
  #     anti = Words.new('bed', 'rat')
  #     expect(anagram.anagram_check?).to(eq('Is an anagram'))
  #     expect(not_anagram.anagram_check?).to(eq('not an anagram'))
  #     expect(also_not.anagram_check?).to(eq('Is NOT an anagram.'))
  #     expect(anti.anagram_check?).to(eq('is an anti-gram'))
  #   end

  end
  
end