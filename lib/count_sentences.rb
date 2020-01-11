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
    array = self.split(" ")
    count = 0
    array.each do |element|
      if element.exclamation?
        count += 1
      end
      if element.question?
        count += 1
      end
      if element.sentence?
        count += 1
      end
    end
    return count
  end
end