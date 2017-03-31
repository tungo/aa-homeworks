class Stack
  def initialize
    @array = []
  end

  def add(el)
    @array.push(el)
  end

  def remove
    @array.pop
  end

  def show
    self.dup
  end
end

if __FILE__ == $PROGRAM_NAME
  stack = Stack.new
  p stack

  10.times do |num|
    stack.add(num)
    p stack
  end

  10.times do
    stack.remove
    p stack.show
  end
end
