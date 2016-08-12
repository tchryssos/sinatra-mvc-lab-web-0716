require 'pry'

class PigLatinizer
  attr_accessor :phrase

  def piglatinize(phrase)
    vowels = %w[a e i o u]
    split_phrase=phrase.split
    piglatin_phrase=split_phrase.collect do |word|
      if vowels.include?(word[0].downcase)
        word<<"way"
      else
        beginning_consonants=word.scan(/^\w[^aeiou]*/)[0].length
        bc_id=beginning_consonants-1
        word[beginning_consonants..-1]<<"#{word[0..bc_id]}ay"
      end
    end
    piglatin_phrase.join(" ")
  end

  def to_pig_latin(phrase)
    vowels = %w[a e i o u]
    split_phrase=phrase.split
    piglatin_phrase=split_phrase.collect do |word|
      if vowels.include?(word[0].downcase)
        word<<"way"
      else
        beginning_consonants=word.scan(/^\w[^aeiou]*/)[0].length
        bc_id=beginning_consonants-1
        word[beginning_consonants..-1]<<"#{word[0..bc_id]}ay"
      end
    end
    piglatin_phrase.join(" ")
  end
end
