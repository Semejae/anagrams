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
end