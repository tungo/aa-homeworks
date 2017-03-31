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
  10.times do |num|
    stack.add(num)
  end
  p stack

  10.times { stack.remove }
  p stack.show
end
