require 'byebug'

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = place_stones
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups = Array.new(14) { Array.new([]) }
    (0..5).each do |cup|
      cups[cup] = [:stone, :stone, :stone, :stone]
    end
    (7..12).each do |cup|
      cups[cup] = [:stone, :stone, :stone, :stone]
    end
    cups
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(1, 14)
  end

  def make_move(start_pos, current_player_name)
    handful = @cups[start_pos]
    @cups[start_pos] = []
    current_player_name == @name1 ? opponent_cup = 13 : 6
    i = 0

    until handful.empty?
      i += 1
      next_cup = (start_pos + i) % 14
      unless next_cup == opponent_cup
        @cups[next_cup] << handful.pop
      end
    end
    render
    next_turn(next_cup)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    # byebug
    if ending_cup_idx == (13 || 6)
      return :prompt
    elsif @cups[ending_cup_idx].length == 1
      return :switch
    else
      return ending_cup_idx
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
    @cups[0...6].all? { |cup| cup.empty? } || @cups[7...13].all? { |cup| cup.empty? }
  end

  def winner
    case @cups[6].size <=> @cups[13].size
    when -1
      return @name2
    when 0
      return :draw
    when 1
      return @name1
    end
  end
end
