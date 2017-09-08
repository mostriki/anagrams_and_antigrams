require('rspec')
require('pry')
require('ana')

describe ('#ana') do
  angram = Anagrams.new()

  it ("check if two words are anagrams.") do
    expect(angram.ana("ruby", "bury")).to(eq(true))
  end

  it ("check if anagrams have different cases and are still anagrams.") do
    expect(angram.ana("Tea", "Eat")).to(eq(true))
  end

  it ("account for multiple words being anagrams or 'antigrams'.") do
    expect(angram.ana("A decimal point.", "I'm a dot in place.")).to(eq(true))
  end

  it ("check if the inputs contain a, i, e, o, u or y.") do
    expect(angram.ana("rb", "br")).to(eq("You need to input actual words!"))
  end

  # it ("check if a word is an anagram and also a palindrome.") do
  #   expect(angram.ana("Animal", "Lamina")).to(eq(true))
  # end
  #
  # it ("check if two words are 'antigrams'.") do
  #   expect(angram.ana("ruby", "stab")).to(eq(true))
  # end


end
