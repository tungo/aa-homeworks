class Map
  def initialize
    @array = []
  end

  def assign(key, value)
    idx = lookup(key)
    idx ? @array[idx][1] = value : @array << [key, value]
  end

  def lookup(key)
    @array.each_with_index do |(k, _), idx|
      return idx if k == key
    end

    nil
  end

  def remove(key)
    return nil if lookup(key)
  end

  def value(key)
    @array.each do |(k, v)|
      return v if k == key
    end

    nil
  end

  def show
    self.dup
  end
end

if __FILE__ == $PROGRAM_NAME
  map = Map.new
  p map.show

  puts "Assign to map"
  10.times do
    idx, num = rand(10), rand(10)
    puts "idx: #{idx}; num: #{num}"

    map.assign(idx, num)
    p map.show
  end

  puts "Lookup a key"
  10.times do
    key = rand(10)
    puts "key: #{key} => index: #{map.lookup(key).inspect}"
  end

  puts "Get value by key"
  10.times do
    key = rand(10)
    puts "key: #{key} => value: #{map.lookup(key).inspect}"
  end
end
