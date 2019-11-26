# frozen_string_literal: true

require_relative '../lib/phone_number_to_words/dictionary_utils.rb'
describe DictionaryUtils do
  it 'should convert the word to numeric' do
    digits = ''
    'aa'.chars.each do |char|
      digits += DictionaryUtils.char_to_digit(char)
    end
    expect(digits).to eq('22')
  end

  it 'should load dictionary file and convert to hash' do
    dictionary = DictionaryUtils.load_dictionary
    expect(dictionary['224']).to match_array([%w[224 aah], %w[224 bag], %w[224 bah]])
  end
end
