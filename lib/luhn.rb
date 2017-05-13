require 'benchmark'


def is_valid?(number)

  double = []
  underTen = []
  summation = 0

  # takes input, turns into a string and reverses it
  reverse = number.to_s.split('').reverse

  #Double every even number
    #iterate through reversed string, doubling every second digit
  reverse.each_with_index do |dub, index|
    #checks if index is even and is not the last item
    index %2 ==0 && index != reverse.length - 1 ? 
    #if true, double and push onto double array, else push onto double array
    double << dub.to_i * 2 : double << dub.to_i
  end

  #If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
  #iterate through double array
  double.each do |x|
    #check if each number is >= 10
      #if true, subtract 9 and push onto underTen array,
        #else push onto underTen array
    x >= 10 ? underTen << x - 9 : underTen << x
  end

  #Sum the digits
  #iterate through underTen array and add all numbers
  underTen.each do |sum|
    # store into summation variable
    summation +=sum
  end

  puts "Orginal sequence: #{number}"
  puts "Reversed sequence: #{reverse.join}"
  puts "Double: #{double.join}"
  puts "Under Ten: #{underTen.join}" 
  puts "Sum: #{summation}"
  #If the sum is divisible by 10 it's a valid number. Otherwise it's invalid.
  puts summation % 10==0 ? true :  false

end

is_valid?(4194560385008504)


#Run a benchmark

# number = 4194560385008504

# Benchmark.bm do |x|
#   x.report("is_valid?") { is_valid?(number) }

# end









