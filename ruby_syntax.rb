
#   Variables
character_name = "Mike"
character_age = "35"
puts ("There once was a man named " + character_name)
puts ("he was " + character_age + " years old.")
character_name = "Tom"
puts ("He really liked the name " + character_name)
puts ("but didn't like being " + character_age)
name = "Mike"
occupation = "programmer"
age = 75
gpa = 3.2
ismale = true
istall = false
flaws = nil

#   Strings
phrase = "   Gifraffe\nAcademy"
puts phrase.strip.upcase()
puts phrase.length()
puts phrase.include? "Academy"
puts phrase[5,6]
puts phrase.index("ffe")

#   Numbers
puts 5 + 9
puts 2**4
puts 10%3
num = 20.687
lowerNum = 20.1
puts num.round()
puts num.floor()
puts num.ceil()
puts Math.sqrt(36)
puts 1.0 + 7
puts 1 + 7
puts 10 / 7
puts 10 / 7.0

#    Arrays
friends = Array["Kevin", "Karen", "Oscar", "Andy"]
friends[0] = "Dwight"
puts friends[0, 2]

people = Array.new
people[0] = "George"
people[5] = "Michael"
puts people
puts friends.include? "Karen"
puts friends.reverse()
print "\n"
puts friends.sort()

#    Hashes
states = {
  :Pennsylvania => "PA",
  "New York" => "NY",
  "Oregon" => "OR"
}

puts states
puts states["Oregon"]
puts states[:Pennsylvania]
puts states[1]

#    Methods
def sayhi
  puts "Hello User"
end
sayhi

def hello(name, age = -1)
  puts("Hello " + name + ", you are " + age.to_s)
end
hello("Mike", 28)
hello("Mike")

def cube(num)
  return num * num * num, 70
  puts "hello"
  5
end
puts cube(3)[1]

#    If Statements
ismale = false
istall = true

if ismale and istall
  puts "You are a tall male"
elsif ismale and !istall
  puts "You are a short male"
elsif !ismale and istall
  puts "You are not male but are tall"
else
  puts "You not male and not tall"
end

def max(num1, num2, num3)
  if num1 >= num2 and num1 >= num3
    return num1
  elsif num2 >= num1 and num2 >= num3
    return num2
  else return num3
  end
end

puts max(100, 20, 3)

#    Case Expressions
def get_day_name(day)
  day_name = ""

  case day
  when "mon"
    day_name = "Monday"
  when "tue"
    day_name = "Tuesday"
  when "wed"
    day_name = "Wednesday"
  when "thu"
    day_name = "Thursday"
  when "fri"
    day_name = "Friday"
  when "sat"
    day_name = "Saturday"
  when "sun"
    day_name = "Sunday"
  else
    day_name = "Invalid abbreviation"
  end
  return day_name
end

puts get_day_name("mon")

#    While Loops
index = 1
while index <= 8
  puts index
  index += 1
end

#    For Loops
for element in friends
  puts element
end

friends.each do |friend|
  puts friend
end

for index in 0..5
  puts index
end

7.times do |index|
  puts index
end

#    Exponent Method
def pow(base_num, pow_num)
  result = 1
  pow_num.times do |index|
    result = result * base_num
  end
  return result
end

puts pow(4, 3)

#    Comments
=begin
all of this stuff is also commented!
=end

#    File Reading.... "a" = append, "r" = read, "w" = write
File.open("employees.txt", "r") do |file|
  for line in file.readlines()
    puts line
  end
end

#    Exception Handling
lucky_nums = [4, 8, 15, 16, 23, 42]
begin
  lucky_nums["dog"]
  num = 10 / 0
rescue ZeroDivisionError
  puts "Division by zero error"
rescue TypeError => e
  puts e
end

require_relative "ruby_tools_module.rb"
include Tools
Tools.sayhi("Mike")
