require 'benchmark'

module Luhn
  def self.is_valid?(number)
    double = []
    under_ten = []
    summation = 0

    # takes input, turns into a string and reverses it
    reverse = number.to_s.split('').reverse

    # Double every even number
    # iterate through reversed string, doubling every second digit
    # checks if index is even and is not the last item
    # if true, double and push onto double array, else push onto double array
    reverse.each_with_index do |dub, index|
      double << if index.even? && index != reverse.length - 1
                  dub.to_i * 2
                else
                  dub.to_i
                end
    end

    # If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
    # iterate through double array
    # check if each number is >= 10
    # if true, subtract 9 and push onto underTen array,
    # else push onto underTen array
    double.each do |x|
      under_ten << (x >= 10 ? x - 9 : x)
    end

    # Sum the digits
    # iterate through underTen array and add all numbers
    # store into summation variable
    under_ten.each do |sum|
      summation += sum
    end

    puts "Orginal sequence: #{number}"
    puts "Reversed sequence: #{reverse.join}"
    puts "Double: #{double.join}"
    puts "Under Ten: #{under_ten.join}"
    puts "Sum: #{summation}"
    # If the sum is divisible by 10 it's a valid number. Otherwise it's invalid.
    puts summation % 10 == 0 ? true : false
    summation % 10 == 0 ? true : false
  end
end

# is_valid?(4_194_560_385_008_504)

# Run a benchmark

# number = 4194560385008504

# Benchmark.bm do |x|
#   x.report("is_valid?") { is_valid?(number) }
# end
