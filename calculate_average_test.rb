require_relative 'calculate_average'
require 'test/unit'

class CalculateAverageTest < Test::Unit::TestCase

  def test_calculate_average
    # sample array
    array = [1, 2, 3, 4, 5, 6]

    # to calculate average
    assert_equal("Average is: 3.5", CalculateAverage.new.calculate_average(array, 'Average is:'))

    # to calculate average without highest and lowest elements
    assert_equal("Average without highest and lowest number is: 3.5", CalculateAverage.new.calculate_average_without_highest_lowest(array))
  end

  def test_failing_calculate_average
    # sample array
    array = [1, 2, 3, 4, 5, 6]

    # to calculate average
    assert_not_equal("Average is: 4.0", CalculateAverage.new.calculate_average(array, 'Average is:'))

    # to calculate average without highest and lowest elements
    assert_not_equal("Average without highest and lowest number is: 4.0", CalculateAverage.new.calculate_average_without_highest_lowest(array))
  end

end
#
