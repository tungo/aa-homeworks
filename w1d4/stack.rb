class Stack
  def initialize
    @array = []
  end

  def add(el)
    @array.push(el)
  end

  def remove
    @array.pop(el)
  end

  def show
    self.dup
  end
end
