class Rover

  attr_accessor :name, :x, :y, :direction

  def initialize(name, x=0, y=0, direction="N")
    @name = name
    @x = x
    @y = y
    @direction = direction
  end

  # def mars
  #   puts "Mars is big. How big?"
  #   mars = gets.chomp
  #
  #   mars = mars.chars
  #   mars.map! { |number|
  #     number.strip
  #   }
  #    mars.delete_if { |number|
  #      number ==""
  #   }

  def instructions(input)
    input.chars.each do |instruction|
      puts instruction
    if instruction == "L"
      turn_left
    elsif instruction == "R"
      turn_right
    else instruction == "M"
      forward
    end
  end

  #MOVEMENT METHODS

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


end




spirit = Rover.new("Spirit", 0, 0, "E")

puts spirit.instructions("RMLMMM")
