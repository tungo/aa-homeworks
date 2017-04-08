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

def dominant(fishes)

end

def clever(fishes)

end

def slow_dance(dir, tiles)

end

def constant_dance(dir, tiles)

end
