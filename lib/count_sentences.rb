require 'pry'

class String

  def sentence?
    # self.ends_with?(".")? true : false
    self.end_with?(".")? true : false
  end

  def question?
    self.end_with?("?")? true : false
  end

  def exclamation?
    self.end_with?("!")? true : false
  end

  def count_sentences
    sentence_array = self.split(/\.|\?|!/)
    sentence_array.filter { |sentence| !sentence.empty? }.length
  end
end