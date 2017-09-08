#!/usr/bin/env ruby

class Anagrams
  # def initialize(input, comparison)
  #   @input = input
  #   @comparison = comparison
  # end

  def ana (input, comparison)
    input_count = input.count('aeiouy')
    comparison_count = comparison.count('aeiouy')
    if input_count == 0 || comparison_count == 0
      return "You need to input actual words!"
    end

    input = input.downcase.gsub(/[^a-z0-9]/i, '').split(//)
    comparison = comparison.downcase.gsub(/[^a-z0-9]/i, '').split(//)

    if input.reverse == comparison
      return "Congratulations. Your anagrams make a palindrome too."
    end

    input_arr = input.sort
    comparison_arr = comparison.sort

    if input_arr == comparison_arr
      return true
    else
      return false
    end
  end
end
