#!/usr/bin/env ruby

class Anagrams
  def ana (input, comparison)
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
end


# input = "I'm a dot in place.".downcase.gsub(/[^a-z0-9]/i, '').split(//)
# inputArr = input.sort
#
# comparison = "A decimal point.".downcase.gsub(/[^a-z0-9]/i, '').split(//)
# comparisonArr = comparison.sort
#
# "I'm a dot in place.".tr(/[^a-z0-9]/, '').downcase.split(//)
