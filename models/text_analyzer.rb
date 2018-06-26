# Your TextAnalyzer model code will go here.
class TextAnalyzer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def count_vowels(text_from_user)
    vowels = 0
    text_from_user.split('').each do |letter|
      if letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u'
        vowels += 1
      end
    end
    vowels.to_s
  end
end
