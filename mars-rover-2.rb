class Rover

  attr_accessor :name, :x, :y, :direction, :plateau_x, :plateau_y

  def initialize(name, x=0, y=0, direction="N")
    @name = name
    @x = x
    @y = y
    @direction = direction
    @plateau_x = plateau_x
    @plateau_y = plateau_y
  end

  def plateau
    puts "Mars is big. How big?"
    puts "how large is the x-axis?"
    @plateau_x = gets.chomp
    puts "how large is the y-axis?"
    @plateau_y = gets.chomp
    puts "The size of Mars is #{@plateau_x}x by #{@plateau_y}y."
  end

  def landing
    puts "where did the rover land on the x-axis?"
    @x = gets.chomp
    puts "where did the rover land on the y-axis?"
    @y = gets.chomp
    puts "what direction (N, E, S or W) are you facing?"
    @direction = gets.chomp
      if @x > @plateau_x || @y > @plateau_y
        return "sorry, #{@name} missed the landing and blew up"
      # elsif @direction != "N", "E", "S", "W"
      #   puts "you landed on your butt, and the rover died"
      else
        puts "#{@name} landed at #{@x}x, #{@y}y, and is facing #{@direction}."
      end
    end
  end

  def input
    puts "please enter a string of instructions for the rover"
    puts "you can turn (R)ight, (L)eft, or (M)ove forward"
    input = gets.chomp
      input.chars.each do |instruction|
      if instruction = "L" || "R"
        turn(instruction)
      else instruction = "M"
        forward
      end
    end
  end

def turn(letter)
  if letter == "L"
    case @direction
    when "N"
      @direction = "W"
    when "W"
      @direction = "S"
    when "S"
      @direction = "E"
    when "E"
      @direction = "N"
    end

  if letter == "R"
    case @direction
    when "N"
      @direction = "E"
    when "E"
      @direction = "S"
    when "S"
      @direction = "W"
    when "W"
      @direction = "N"
    end
  end
end

def forward
  if @direction == "N"
    @y = y + 1
  elsif @direction == "S"
    @y = y - 1
  elsif @direction == "E"
    @x = x + 1
  else @direction == "W"
    @x = x - 1
  end
end

def final_position
  return "#{@name} is at position #{@x}x, #{@y}, and is facing #{@direction}!"
  puts "Congrats, Mars explored!"
end

end

  spirit = Rover.new("Spirit", 0, 0, "N")

puts spirit.plateau
puts spirit.landing
puts spirit.input
