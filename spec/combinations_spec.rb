# frozen_string_literal: true

require_relative '../lib/phone_number_to_words/possible_combinations.rb'

describe PossibleCombinations do
  let(:phone) { '6686787825' }
  let(:min_length) { 3 }
  let(:max_length) { 10 }

  it 'should returns all possible combinations for given phone number' do
    combinations = PossibleCombinations
                   .number_of_possible_combinations(phone,
                                                    min_length,
                                                    max_length)
    expect(combinations).to match_array([%w[6686787825],
                                         %w[668 6787825],
                                         %w[6686 787825],
                                         %w[66867 87825],
                                         %w[668678 7825],
                                         %w[6686787 825],
                                         %w[678 7825 668],
                                         %w[7825 668 678],
                                         %w[668 678 7825]])
  end
end
