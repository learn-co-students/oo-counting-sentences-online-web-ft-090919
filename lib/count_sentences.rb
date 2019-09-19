require 'byebug'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0
    
    if self.include?(".")
      temp_count = self.split(".").length
      if temp_count > 1
        count += temp_count - 1
      else
        count += temp_count
      end
    end
    
    if self.include?("?")
      temp_count = self.split("?").length
      if temp_count > 1
        count += temp_count - 1
      else
        count += temp_count
      end
    end
    
    if self.include?("!")
      temp_count = self.split("!").length
      if temp_count > 1
        count += temp_count - 1
      else
        count += temp_count
      end
    end
    count
  end
end