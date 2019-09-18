require 'pry'

class String

  
  def sentence?
    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    if self[-1] == "?"
      true
    else
      false
    end

  end

  def exclamation?
    self.end_with?("!") 
  end

  def count_sentences
   self.split(/[.?!]+/).count
  end  
  
end  