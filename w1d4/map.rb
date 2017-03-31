class Map
  def initialize
    @array = []
  end

  def assign(key, value)
    idx = lookup(key)
    idx ? @array[idx][key] = value : @array << [key, value]
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
