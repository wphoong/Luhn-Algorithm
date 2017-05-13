require 'benchmark'


def is_valid?(number)

  double = []
  underTen = []
  summation = 0

  reverse = number.to_s.split('').reverse

  reverse.each_with_index do |dub, index|
    index %2 ==0 && index != reverse.length - 1 ? 
    double << dub.to_i * 2 : double << dub.to_i
  end

  double.each do |x|
    x>=10 ? underTen << x-9 : underTen << x
  end

  underTen.each do |sum|
    summation +=sum
  end
  
  puts "Orginal sequence: #{number}"
  puts "Reversed sequence: #{reverse.join}"
  puts "Double: #{double.join}"
  puts "Under Ten: #{underTen.join}" 
  puts "Sum: #{summation}"
  puts summation % 10==0 ? true :  false

end


is_valid?(4194560385008504)

number = 4194560385008504

Benchmark.bm do |x|
  x.report("is_valid?") { is_valid?(number) }

end









