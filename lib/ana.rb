#!/usr/bin/env ruby

class Anagrams
# initilization method for inputs
  def initialize(input, comparison)
    @input = input
    @comparison = comparison
    @input_arr = @input.downcase.gsub(/[^a-z0-9]/i, '').split(//)
    @comparison_arr = @comparison.downcase.gsub(/[^a-z0-9]/i, '').split(//)
    @input_sort = @input_arr.sort
    @comparison_sort = @comparison_arr.sort
  end

# method (check words for vowels)
  def word_check (word)
    word.count('aeiouy') > 0
  end

# method (check if words make a palindrome)
  def palindrom_check (input, comparison)
    input.reverse == comparison
  end

# method (check if words are antigrams)
  def antigram_check(input, comparison)
    (@input_sort & @comparison_sort).empty?
  end

# method (check if words are anagrams)
  def ana
# checks for words
    if word_check(@input) == false || word_check(@comparison) == false
      return "You need to input actual words!"
    end

# checks to see if it is a palindrome.
    if palindrom_check(@input_arr, @comparison_arr) == true
      return "Congratulations. Your anagrams make a palindrome."
    end

# checks to see if words make an anagram or an antigram.
    if antigram_check(@input, @comparison) == true
      return "These words have no letter matches and are antigrams."
    elsif @input_sort == @comparison_sort
      true
    else
      false
    end
  end
end
