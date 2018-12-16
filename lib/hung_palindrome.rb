require "hung_palindrome/version"

module HunglPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end


  # #Returns the letters in the String
  # def letters
  #   self.chars.select { |c| c.match(/[a-z]/i) }.join
  # end


  private

    # Returns content for palindrome testing.
    def processed_content
      self.scan(/[a-z\d]/i).join.downcase
    end

  end

  class String
    include HungPalindrome
  end

  class Integer
    include HungPalindrome
  end
