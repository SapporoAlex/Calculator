run = true

def add(num_a, num_b)
  num_a + num_b
end

def subtract(num_a, num_b)
  num_a - num_b
end

def divide(num_a, num_b)
  if num_b == 0
    "Cannot divide by zero."
  else
    num_a / num_b.to_f
  end
end

def multiply(num_a, num_b)
  num_a * num_b
end

def get_user_numbers()
  puts "Enter the first number."
  num_a = gets.chomp().to_i
  puts "Enter the second number."
  num_b = gets.chomp().to_i
  return num_a, num_b
end

while run
  puts "Welcome to Ruby Calculator"
  puts "1. Addition"
  puts "2. Subtraction"
  puts "3. Division"
  puts "4. Multiplication"
  puts "5. Exit"
  choice = gets.chomp()
  case choice
  when "1"
    num_a, num_b = get_user_numbers
    sum = add(num_a, num_b)
    puts "#{num_a} plus #{num_b} is #{sum}."
  when "2"
    num_a, num_b = get_user_numbers
    result = subtract(num_a, num_b)
    puts "#{num_a} minus #{num_b} is #{result}." 
  when "3"
    num_a, num_b = get_user_numbers
    result = divide(num_a, num_b)
    if result.is_a?(String)
      puts result
    else
      puts "#{num_a} divided by #{num_b} is #{result}."
    end
  when "4"
    num_a, num_b = get_user_numbers
    result = multiply(num_a, num_b)
    puts "#{num_a} times #{num_b} is #{result}."
  when "5"
    run = false
    puts "See you!"
  else
    puts "Invalid choice. Please select a number between 1 and 5."
  end
end