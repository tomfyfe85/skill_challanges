class GrammarStats
  def initialize
    @correct_count = 0 
    @total_checks = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    fail "You must enter string" unless text.class == String
    if text[0] == text[0].upcase && text[-1] == '.' || text[-1] == '!' || text[-1] == '?'
      @correct_count += 1
      @total_checks += 1
      return true 
    else 
      @total_checks += 1
      return false
    end 
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    percentage = ((@correct_count.to_f/@total_checks.to_f) * 100)
    percentage
    end
  end
