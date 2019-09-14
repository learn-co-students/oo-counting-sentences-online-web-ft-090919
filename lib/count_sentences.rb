require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true 
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true 
    else
      return false 
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true 
    else
      return false
    
    end
  end

  def count_sentences
    arr = self.split(/\?|\.|!/)
    new = arr.reject(&:empty?).length
  end
  
end
"Hello! How are you?? What are you doing today.".count_sentences

