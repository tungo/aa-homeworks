class Queue
  def initialize
    @array = []
  end

  def enqueue(el)
    @array.push(el)
  end

  def dequeue
    @array.shift
  end

  def show
    self
  end
end

if __FILE__ == $PROGRAM_NAME
  queue = Queue.new
  p queue.show

  10.times do |num|
    queue.enqueue(num)
    p queue
  end

  10.times do
    queue.dequeue
    p queue
  end
end
