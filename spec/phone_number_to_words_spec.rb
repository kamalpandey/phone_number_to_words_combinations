# frozen_string_literal: true

describe PhoneNumberToWords do
  let(:phone1) { '6686787825' }
  let(:phone2) { '2282668687' }
  let(:min_length) { 3 }
  let(:max_length) { 10 }
  let(:invalid_phone) { '9841144607' }
  let(:result1) do
    [%w[noun struck],
     %w[onto struck],
     %w[motor truck],
     %w[motor usual],
     %w[nouns truck],
     %w[nouns usual],
     %w[motortruck]]
  end

  let(:result2) do
    [%w[act amounts],
     %w[act contour],
     %w[bat amounts],
     %w[bat contour],
     %w[cat amounts],
     %w[cat contour],
     %w[acta mounts],
     %w[catamounts]]
  end

  context '#validate number' do
    it 'returns false if number is not valid' do
      phone_number_to_words = PhoneNumberToWords.new
      expect(phone_number_to_words.valid_number?(invalid_phone)).to eq(false)
    end

    it 'returns true if number is valid' do
      phone_number_to_words = PhoneNumberToWords.new
      expect(phone_number_to_words.valid_number?(phone1)).to eq(true)
    end
  end

  context '#generate words' do
    it 'should generates all words' do
      phone_number_to_words = PhoneNumberToWords.new
      expect(phone_number_to_words.generate_words(phone2)).to include(*result2)
      expect(phone_number_to_words.generate_words(phone1)).to include(*result1)
    end
  end

  context '#does not generate words' do
    it 'does not generate words' do
      phone_number_to_words = PhoneNumberToWords.new
      expect(phone_number_to_words.generate_words(phone1)).not_to match_array(result2)
    end
  end
end
