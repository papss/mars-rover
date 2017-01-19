class Rover

  attr_accessor :name, :x, :y, :direction

  def initialize(name, x=0, y=0, direction="N")
    @name = name
    @x = x
    @y = y
    @direction = direction
  end

  def turn_right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direction = "W"
    else @direction == "W"
      @direction = "N"
    end
  end

  def turn_left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "W"
      @direction = "S"
    elsif @direction == "S"
      @direction = "E"
    else @direction == "E"
      @direction = "N"
    end
  end


  def forward
    puts "turn Right, Left, or Move foward?"
    input = gets.chomp
    if input == "Move" && @direction == "N"
      @y = y + 1
      return "#{@name}'s position is #{@x}, #{@y}, facing #{@direction}.'"
    elsif input == "Move" && @direction == "S"
      @y = y - 1
      return "#{@name}'s position is #{@x}, #{@y}, facing #{@direction}.'"
    elsif input == "Move" && @direction == "E"
      @x = x + 1
      return "#{@name}'s position is #{@x}, #{@y}, facing #{@direction}.'"
    else input == "Move" && @direction == "W"
      @x = x - 1
      return "#{@name}'s position is #{@x}, #{@y}, facing #{@direction}.'"
    end
  end


end




spirit = Rover.new("Spirit", 0, 0, "E")

puts spirit.turn_left


  # def plateau
  #   puts "how long is the x-axis?"
  #     x_height = gets.chomp
  #   puts "how long is the y-axis?"
  #     y_length = get.chomp
  #   plateau = x_height * y_length
  # end
