# frozen_string_literal: true

require_relative 'phone_number_to_words/phone_number_to_words.rb'

start_time = Time.now
conversion = PhoneNumberToWords.new
conversion.perform!
finish_time = Time.now
difference = finish_time - start_time
puts difference
