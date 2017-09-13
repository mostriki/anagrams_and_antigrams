require('rspec')
require('pry')
require('ana')

describe ('#ana') do
  it ("check if two words are anagrams.") do
    angram = Anagram.new("ruby", "bury")
    expect(angram.ana).to(eq("Your words are anagrams!"))
  end

  it ("check if anagrams have different cases and are still anagrams.") do
    angram = Anagram.new("Tea", "Eat")
    expect(angram.ana).to(eq("Your words are anagrams!"))
  end

  it ("account for multiple words being anagrams or 'antigrams.'") do
    angram = Anagram.new("A decimal point.", "I'm a dot in place.")
    expect(angram.ana).to(eq("Your words are anagrams!"))
  end

  it ("check if the inputs contain a, e, i, o, u or y.") do
    angram = Anagram.new("rb", "br")
    expect(angram.ana).to(eq("You need to input actual words!"))
  end

  it ("check if a word is an anagram and also a palindrome.") do
    angram = Anagram.new("Animal", "Lamina")
    expect(angram.ana).to(eq("Congratulations. Your anagrams make a palindrome."))
  end

  it ("check if two words are 'antigrams'.") do
    angram = Anagram.new("hi", "bye")
    expect(angram.ana).to(eq("These words have no letter matches and are antigrams."))
  end
end
