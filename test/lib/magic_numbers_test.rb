require 'minitest/autorun'
require_relative '../../lib/magic_numbers'

describe MagicNumbers do
  describe '.count' do
    describe 'when range list is invalid' do
      it 'should returns nil' do
        range_list = [[8, 27]]
        assert_nil MagicNumbers.count(range_list)
      end

      it 'should returns zero' do
        range_list = [[24, 10], [48, 48]]
        MagicNumbers.count(range_list).must_equal(0)

        range_list = [[10, 24], [48, 40]]
        MagicNumbers.count(range_list).must_equal(0)

        range_list = [[24, 10], [48, 40]]
        MagicNumbers.count(range_list).must_equal(0)
      end
    end

    describe 'when range list is valid' do
      it 'should count magic numbers' do
        range_list = [[8, 27], [49, 49]]

        MagicNumbers.count(range_list).must_equal(3)
      end
    end
  end
end
