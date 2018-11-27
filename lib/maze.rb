class Maze
  def initialize(direction)
    @direction = direction
  end


  def direction

    if @direction == "forward"
      "true-forward"
    elsif @direction == "left"
      "true-left"
    elsif @direction == "right"
      "true-right"
    else @direction == "backward"
      "true-back"
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
