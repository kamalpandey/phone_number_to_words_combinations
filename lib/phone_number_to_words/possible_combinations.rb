# frozen_string_literal: true

# 3 x 7,
# 3 x 3 x 4,
# 3 x 4 x 3,
# 4 x 6,
# 4 x 3 x 3,
# 5 x 5,
# 6 x 4,
# 7 x 3, 10

# generate all possible combinations
module PossibleCombinations
  @combinations = []
  @phone_number = ''
  @min_length = 3
  @max_length = 10

  def self.number_of_possible_combinations(phone_number, min_length, max_length)
    @phone_number = phone_number
    @min_length = min_length
    @max_length = max_length
    single_combination
    double_combinations
    triplet_combinations
    @combinations
  end

  def self.triplet_combinations
    temp_combinations = []
    first_combination = [@phone_number[0..@min_length - 1]]
    second_combination = [@phone_number[@min_length..@min_length * 2 - 1]]
    third_combination = [@phone_number[@min_length * 2..@max_length - 1]]
    temp_combinations << first_combination + second_combination + third_combination
    i = 1
    # rotate to get all of the combinations
    while i < 4
      @combinations << temp_combinations[0].rotate(i)
      i += 1
    end
  end

  def self.single_combination
    @combinations << [@phone_number[0..@max_length - 1]]
    @combinations
  end

  def self.double_combinations
    i = 2
    while i < 7
      first_combination = [@phone_number[0..i]]
      second_combination = [@phone_number[i + 1..-1]]
      @combinations << first_combination + second_combination
      i += 1
    end
    @combinations
  end
end
