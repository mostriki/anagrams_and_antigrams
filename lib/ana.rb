#!/usr/bin/env ruby

class Anagrams
# initilization method for inputs
  def initialize(input, comparison)
    @input = input
    @comparison = comparison
  end

# method (check words for vowels)
  def word_check (word)
    word.count('aeiouy') > 0
  end

# method (check if words make a palindrome)
  def palindrom_check (word1, word2)
    word1.reverse == word2
  end

# method (check if words are anagrams)
  def ana
# splits into an array of lowercase letters.
    input_arr = @input.downcase.gsub(/[^a-z0-9]/i, '').split(//)
    comparison_arr = @comparison.downcase.gsub(/[^a-z0-9]/i, '').split(//)

# counts the vowels in a string
    if word_check(@input) == false || word_check(@comparison) == false
      return "You need to input actual words!"
    end

# checks to see if it is a palindrome.
    if palindrom_check(input_arr, comparison_arr) == true
      return "Congratulations. Your anagrams make a palindrome."
    end

# sorts into alphabetical array of characters.
    input_arr = input_arr.sort
    comparison_arr = comparison_arr.sort

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
