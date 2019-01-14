class CalculateAverage
  # method to calculate average of any given array
  def calculate_average array, message
    unless array.empty? || array.size <= 1
      average = array.inject {|sum, el| sum + el}.to_f / array.size
      p "#{message} #{average}"
    else
      p 'Array is either empty or having only one element, Please Enter more elements'
    end
  end

  # method to modify array and create new array by removing the min and max value
  def calculate_average_without_highest_lowest array
    unless array.empty? || array.size < 4
      modified_array = array.reject {|arr| array.minmax.include? arr}
      # called calculate_average to calculate average
      calculate_average modified_array, 'Average without highest and lowest number is:'
    else
      p 'Array is either empty or having only three elements, Please Enter more elements to calculate the average without highest and lowest numbers'
    end

  end

end
