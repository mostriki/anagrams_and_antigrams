#!/usr/bin/env ruby

class Anagrams
  # def initialize(input, comparison)
  #   @input = input
  #   @comparison = comparison
  # end

# checks to see if it is a word.
  def ana (input, comparison)
    input_count = input.count('aeiouy')
    comparison_count = comparison.count('aeiouy')
    if input_count == 0 || comparison_count == 0
      return "You need to input actual words!"
    end
# splits into an array of lowercase characters.
    input = input.downcase.gsub(/[^a-z0-9]/i, '').split(//)
    comparison = comparison.downcase.gsub(/[^a-z0-9]/i, '').split(//)
# checks to see if it is a palindrome.
    if input.reverse == comparison
      return "Congratulations. Your anagrams make a palindrome."
    end
# sorts into alphabetical array of characters.
    input_arr = input.sort
    comparison_arr = comparison.sort
# compares arrays for matching characters
    antigram_check = input_arr & comparison_arr
# checks to see if word is an antigram instead.
    if antigram_check.empty? == true
      return "These words have no letter matches and are antigrams."
    end
# checks to see if it is an anagram.
    if input_arr == comparison_arr
      true
    else
      false
    end
  end
end
