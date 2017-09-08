require('rspec')
require('pry')
require('angram')

describe ('angram') do
  it ("check if two words are anagrams.") do
    expect(("ruby", "bury").angram).to(eq(true))
  end

  it ("check if anagrams have different cases and are still anagrams.") do
    expect(("Tea", "Eat").angram).to(eq(true))
  end

  it ("check if a word is an anagram and also a palindrome.") do
    expect(("Animal", "Lamina").angram).to(eq(true))
  end

  it ("check if the inputs contain a, i, e, o, u or y.") do
    expect(("rb", "br").angram).to(eq(false))
  end

  it ("check if two words are 'antigrams'.") do
    expect(("ruby", "stab").angram).to(eq(true))
  end

  it ("account for multiple words being anagrams or 'antigrams'.") do
    expect(("A decimal point.", "I'm a dot in place.").angram).to(eq(true))
  end
end
