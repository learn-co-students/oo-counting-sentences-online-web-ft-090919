# frozen_string_literal: true

require 'pry'

class String
  def sentence?
    end_with?('.')
  end

  def question?
    end_with?('?')
  end

  def exclamation?
    end_with?('!')
  end

  def count_sentences
      new_array = self.split(/[.?!]/).reject do |string|
        string.empty?
      end
      return new_array.length
  end
end
