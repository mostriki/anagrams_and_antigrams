#!/usr/bin/env ruby

class Anagrams
  def angram (input, comparison)
    input = input.downcase.gsub(/[^a-z0-9]/i, '').split(//)
    comparison = comparison.downcase.gsub(/[^a-z0-9]/i, '').split(//)

    inputArr = input.sort
    comparisonArr = comparison.sort

    if inputArr == comparisonArr
      return true
    else
      return false
  end
end


input = "I'm a dot in place.".downcase.gsub(/[^a-z0-9]/i, '').split(//)
inputArr = input.sort

comparison = "Bury".downcase.split(//)
comparisonArr = comparison.sort

"I'm a dot in place.".tr(/[^a-z0-9]/, '').downcase.split(//)
