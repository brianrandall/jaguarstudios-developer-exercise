class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    #split string into an array of words and iterate through each word
    str.split.map do |word|
      #if word is longer than 4 characters
      if word.length > 4
        #if word starts with a capital letter
        if word[0] == word[0].upcase
          #replace word with Marklar
          word = "Marklar"
        #if word starts with capital letter and ends with punctuation
        elsif word[0] == word[0].upcase && (word[-1] == "!" || word[-1] == "?" || word[-1] == ".")
          #replace word with Marklar but keep punctuation
          word = "Marklar" + word[-1]
        else
          #replace word with marklar but keep punctuation
          if word[-1] == "!" || word[-1] == "?" || word[-1] == "."
            word = "marklar" + word[-1]
          else
            word = "marklar"
          end
        end
      else
        #if word is less than 4 characters, leave it alone
        word
      end
    end.join(" ")
  end

    
  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    sum = 0
    a = 1
    b = 1
    nth.times do
      if a % 2 == 0
        sum += a
      end
      a, b = b, a + b
    end
    sum
  end
end
