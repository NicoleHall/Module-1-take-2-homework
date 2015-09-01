# Let's think about modeling cars in code. Work through these steps:
# 
# Create a Car class and save it in car.rb.
# At the bottom of the file, outside the class definition, write my_car = Car.new to create an instance.
# Run the file from your terminal with $ ruby car.rb. Observe nothing (boohoo!). Note: If you have Seeing Is Believing, you can run the file from within your editor using Command+Option+b (if you don't have it, but want it, just walk up to the front and give me your computer :P)
# Add a method to the class named horn. In that method return the String "BEEEEEP!". Then at the very bottom of the file add puts my_car.horn. If you're using Seeing Is Believing, you can omit the puts, that will print it so that you can see it from the terminal, but you don't need to do that if you're using SiB.
# Run your file again and observe output (yay!).
# Add a method to your class named drive which takes an argument named distance. When the method is called, have it return the a string like I'm driving 12 miles where 12 is the value passed in for distance.
# Add puts my_car.drive(12) to the bottom of your file and run it again. Observe two lines of output (double yay!).
# Add an attr_accessor, an externally-accessible attribute, with the name color.
# Add a method named report_color that returns the String "I am purple" where "purple" is the value stored in color.
# Add two lines to the bottom of the file: my_car.color = 'purple' and puts my_car.report_color
# Add an externally-accessible attribute named wheel_count and add a line at the bottom setting it to 18.
# At the bottom of the file, write a line that prints out "This sweet ride is sitting on 18 wheels" where 18 is the value returned from the wheel_count method.
# At the bottom of the file, write a line that creates a second instance of the class Car called, my_second_car, and sets the wheel_count to 2. Then write a line that prints "This sweet ride is sitting on 2 wheels". Observer how the two instances have their own instance variables (one car has 18 wheels, the other has 2 wheels, the code is shared through the class, but the variables are stored on the object).
# This one is tricky. Add a method named start. If the car has not yet been started, when the method is called it should return "Starting up!". But if the car has previously been started, it should return "BZZT! Nice try, though.". You'll need to create an instance variable, a method, use an if statement, and return a value.

class Car

  attr_accessor :color, :wheel_count

  def initialize
    @start = true
  end

  def horn
    "BEEEEEP"
  end

  def drive(distance)
    "I'm driving #{distance} miles."
  end

  def report_color
    "I'm #{color}"
  end

  def start
    if @start == true
      @start = false
      puts "Starting up!"
    else
      puts "Bzzt, nice try"
    end
  end

end

my_car = Car.new
my_car.horn
my_car.drive(12)
my_car.color = "purple"
my_car.report_color
my_car.wheel_count = 18
puts "This sweet ride is sitting on #{my_car.wheel_count} wheels"
my_second_car = Car.new
my_second_car.wheel_count = 2
puts "This sweet ride is sitting on #{my_second_car.wheel_count} wheels"

my_car.start
my_car.start
