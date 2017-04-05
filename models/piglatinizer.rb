class PigLatinizer

  attr_accessor :text

  def initialize()
    @text = ''
  end

  def piglatinize(word_input)
    array_of_words = word_input.split(" ")
    transformed_array = array_of_words.collect do |word|
      array_of_letters = word.scan(/\w/)
      if(!array_of_letters[0].downcase.scan(/[aeiou]/).empty?)
        word + "way"
      elsif(!array_of_letters[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !array_of_letters[1].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !array_of_letters[2].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty?)
        string = array_of_letters.rotate(3).join
        string + "ay"
      elsif(!array_of_letters[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !array_of_letters[1].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty?)
        string = array_of_letters.rotate(2).join
        string + "ay"
      elsif(!array_of_letters[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !array_of_letters[1].downcase.scan(/[aeiou]/).empty?)
        string = array_of_letters.rotate(1).join
        string + "ay"
      else
        "ERROR"
      end
    end
    transformed_array.join(" ")
  end

  def to_pig_latin(word_input)
    array_of_words = word_input.split(" ")
    transformed_array = array_of_words.collect do |word|
      array_of_letters = word.scan(/\w/)
      if(!array_of_letters[0].downcase.scan(/[aeiou]/).empty?)
        word + "way"
      elsif(!array_of_letters[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !array_of_letters[1].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !array_of_letters[2].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty?)
        string = array_of_letters.rotate(3).join
        string + "ay"
      elsif(!array_of_letters[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !array_of_letters[1].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty?)
        string = array_of_letters.rotate(2).join
        string + "ay"

      elsif(!array_of_letters[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !array_of_letters[1].downcase.scan(/[aeiou]/).empty?)
        string = array_of_letters.rotate(1).join
        string + "ay"
      else
        "ERROR"
      end
    end
    transformed_array.join(" ")
  end



end
