class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }

    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each

    @cups.each_with_index do |cup, idx|
      if idx != 6 && idx != 13
        4.times { cup << :stone }
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(1, 12)
  end

  def make_move(start_pos, current_player_name)
    stones, @cups[start_pos] = @cups[start_pos], []

    curr_pos = start_pos
    until stones.empty?
      curr_pos += 1

      curr_pos = 0 if curr_pos == 14

      next if curr_pos == 6 && current_player_name == @name2
      next if curr_pos == 13 && current_player_name == @name1

      @cups[curr_pos] << stones.pop
    end

    render
    next_turn(curr_pos)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 13 || ending_cup_idx == 6
      :prompt
    elsif @cups[ending_cup_idx].size == 1
      :switch
    elsif @cups[ending_cup_idx].size > 1
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?(&:empty?) || @cups[7..12].all?(&:empty?)
  end

  def winner
    case @cups[6].size <=> @cups[13].size
    when -1 then @name2
    when 0 then :draw
    when 1 then @name1
    end
  end
end
