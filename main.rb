require_relative 'calculate_average'
# Take input from user
puts 'Enter a list of numbers separated by comma (,)'

# Input something like 1,2,3,4 or 3,5,6,1
array = gets.chomp.split(",").map(&:to_i)

# initiated object of Average class
avg = CalculateAverage.new

# called calculate_average to calculate average
avg.calculate_average array, 'Average is:'

# called calculate_average_without_highest_lowest to calculate average by removing highest and lowest
avg.calculate_average_without_highest_lowest array