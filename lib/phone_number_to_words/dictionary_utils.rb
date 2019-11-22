# frozen_string_literal: true

DICTIONARY_PATH = 'lib/phone_number_to_words/dictionary.txt'

# Responsible for loading dictionary, converting to hash and mapping digit to characters
module DictionaryUtils
  def self.char_to_digit char
    return '2' if 'abc'.include?(char)
    return '3' if 'def'.include?(char)
    return '4' if 'ghi'.include?(char)
    return '5' if 'jkl'.include?(char)
    return '6' if 'mno'.include?(char)
    return '7' if 'pqrs'.include?(char)
    return '8' if 'tuv'.include?(char)

    '9'
  end

  def self.load_dictionary
    dictionary = []
    File.foreach(DICTIONARY_PATH) do |word|
      dictionary << word.strip.downcase!
    end
    dictionary_to_hash(dictionary)
  end

  # converting dictionary to hash with key as the numeric value of word and
  # value as array with numeric value and word and finally grouping them

  def self.dictionary_to_hash(dictionary)
    dictionary.map { |word| [word, word] }.map { |word_array| [word_array.first.chars.map {|char| char_to_digit(char)}.join, word_array.last] }.group_by(&:first)
  end
end
