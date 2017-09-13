
class Anagram
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
  def word_check?()
    (@input && @comparison).count('aeiouy') > 0
  end

# method (check if words make a palindrome)
  def palindrom_check?()
    @input_arr.reverse == @comparison_arr
  end

# method (check if words are antigrams)
  def antigram_check?()
    (@input_sort & @comparison_sort).empty?
  end

# method (check if words are anagrams)
  def anagram_check?()
    @input_sort == @comparison_sort
  end

# method (check if words are anagrams)
  def ana
    if word_check? == false
      return "You need to input actual words!"
    end
    if palindrom_check? == true
      return "Congratulations. Your anagrams make a palindrome."
    end
    if antigram_check? == true
      return "These words have no letter matches and are antigrams."
    elsif anagram_check?
      return "Your words are anagrams!"
    end
  end
end
