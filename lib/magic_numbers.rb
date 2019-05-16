require 'prime'

class MagicNumbers
  def self.count(range_list)
    return unless range_list.size == 2

    first_range = range_list[0]
    second_range = range_list[1]

    count_magic_numbers(first_range) + count_magic_numbers(second_range)
  end

  private

  def self.count_magic_numbers(range)
    return 0 unless range.size == 2
    return 0 if range[0] > range[1]

    (range[0]..range[1]).select do |number|
      has_square_root?(number) && square_root_prime?(number)
    end.size
  end

  def self.has_square_root?(number)
    (Math.sqrt(number) % 1).zero?
  end

  def self.square_root_prime?(number)
    Prime.prime?(Math.sqrt(number).to_i)
  end
end
