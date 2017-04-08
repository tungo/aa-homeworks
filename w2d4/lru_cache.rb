class LRUCache
  def initialize(size)
    @hash = Hash.new
    @list = Array.new(size)
    @size = size
  end

  def count
    # returns number of elements currently in cache
    @list.size
  end

  def add(el)
    # adds element to cache according to LRU principle
    key = el.hash

    if @hash.include?(key)
      idx = @list.index(el)
      @list = @list.take(idx) + @list.drop(idx + 1) + [@list[idx]]
    elsif count == @size
      lru = @list.shift
      @hash.delete(lru.hash)

      @list.push(el)
      @hash[key] = el
    else
      @list.push(el)
      @hash[key] = el
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @list
  end

  private
  # helper methods go here!

end
johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show
