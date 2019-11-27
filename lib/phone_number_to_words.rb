# frozen_string_literal: true

require_relative 'phone_number_to_words/phone_number_to_words.rb'

conversion = PhoneNumberToWords.new
start_time = Time.now
conversion.perform!
finish_time = Time.now
difference = finish_time - start_time
puts('Time taken to generate words', difference)

initial_time = Time.now
conversion.load_dictionary
final_time = Time.now
puts 'Time take to load dictionary'
puts(final_time - initial_time)
