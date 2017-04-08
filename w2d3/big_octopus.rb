fishes = [
  'fish',
  'fiiish',
  'fiiiiish',
  'fiiiish',
  'fffish',
  'ffiiiiisshh',
  'fsh',
  'fiiiissshhhhhh'
]
# => "fiiiissshhhhhh"

def sluggish(fishes)
  fishes.each do |fish|
    longest = true
    fishes.each do |fs|
      next if fs == fish
      longest = false if fish.length < fs.length
    end
    return fish if longest
  end

  nil
end

p sluggish(fishes)

def merge_sort(arr)
  return arr if arr.size <= 1

  pivot = arr.size / 2
  left = merge_sort(arr.take(pivot))
  right = merge_sort(arr.drop(pivot))

  merge(left, right)
end

def merge(left, right)
  result = []

  until left.empty? || right.empty?
    if left.first.length < right.first.length
      result << left.shift
    else
      result << right.shift
    end
  end

  result += left + right
end

def dominant(fishes)
  merge_sort(fishes).last
end

p dominant(fishes)

def clever(fishes)
  longest = nil

  fishes.each do |fish|
    longest = fish if longest.nil? || longest.length < fish.length
  end

  longest
end

p clever(fishes)

def slow_dance(dir, tiles)
  tiles.index(dir)
end

tiles_array = [
  "up",
  "right-up",
  "right",
  "right-down",
  "down",
  "left-down",
  "left",
  "left-up"
]

p slow_dance('up', tiles_array)
p slow_dance('right-down', tiles_array)


TILES = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def constant_dance(dir, new_tiles_data_structure)
  new_tiles_data_structure[dir]
end

p constant_dance('up', TILES)
p constant_dance('right-down', TILES)
