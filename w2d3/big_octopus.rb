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
  
end

def slow_dance(dir, tiles)

end

def constant_dance(dir, tiles)

end
