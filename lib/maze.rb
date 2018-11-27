class Maze
  def initialize(direction)
    @direction = direction
  end


  def direction

    if @direction == "forward"
      true
    elsif @direction == "left"
      true
    elsif @direction == "right"
      right()
    elsif @direction == "backward"
      backward()
    end
  end

  def forward


  end

  def left

  end

  def right

  end

  def backward

  end
end
