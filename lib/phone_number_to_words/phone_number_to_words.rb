# frozen_string_literal: true

MIN_LENGTH = 3
MAX_LENGTH = 10

require_relative './dictionary_utils.rb'
require_relative 'exceptions.rb'
require_relative 'possible_combinations.rb'

class PhoneNumberToWords
  def initialize
    @phone_number = ''
    @dictionary = load_dictionary
    @final_result = []
    @possible_combinations = []
  end

  def perform!
    takes_input_and_validate
    print(generate_words(phone_number))
  end

  def takes_input_and_validate
    begin
      puts 'Please enter the 10 digit mobile number :'
      @phone_number = gets.chomp
      raise Exceptions::InvalidPhoneNumber unless valid_number?(phone_number)
    rescue Exceptions::InvalidPhoneNumber => e
      puts e.message
    end
  end

  # returns all the possible combinations for given number
  def all_possible_combinations(phone_number)
    @possible_combinations = PossibleCombinations.number_of_possible_combinations(
      phone_number,
      MIN_LENGTH,
      MAX_LENGTH
    )
  end

  def load_dictionary
    @dictionary || DictionaryUtils.load_dictionary
  end

  def get_words_from_dictionary(number)
    words = dictionary[number] unless number.nil?
    return unless words

    words.map { |_, value| value } # returns only the value as key contains the numeric version of the word due to group by
  end

  def generate_final_result(results)
    results.each do |combinations|
      next if combinations.first.nil? || combinations.last.nil?

      first_combination, *rest_combinations = combinations
      @final_result << first_combination.product(*rest_combinations)
    end
    @final_result.flatten(1).delete_if { |array| array.join.length < MAX_LENGTH } # removing if the combined word length is less than 10
  end

  def generate_words(phone_number)
    possible_combinations = []
    all_possible_combinations(phone_number).each do |combinations|
      temp_combinations = []
      combinations.each do |combination|
        words_from_dictionary = get_words_from_dictionary(combination)
        temp_combinations << words_from_dictionary if words_from_dictionary
      end
      possible_combinations << temp_combinations
    end
    generate_final_result(possible_combinations)
  end

  def valid_number?(phone_number)
    phone_number.gsub(/[^2-9]/, '').length == MAX_LENGTH
  end

  attr_accessor :phone_number, :possible_combinations, :dictionary
end
