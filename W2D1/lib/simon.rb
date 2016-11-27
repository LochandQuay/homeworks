class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    unless @game_over
      show_sequence
      require_sequence
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep (1)
    end
    system ("clear")
  end

  def require_sequence
    @sequence_length.times do |place|
      print "Please enter the next color: "
      user_input = gets.chomp
      if @seq[place] != user_input
        @game_over = true
        return
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    unless @game_over
      puts "RIGHT!"
      sleep(2)
      system ("clear")
    end
  end

  def game_over_message
    puts "WRONG! GAME OVER."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

if __FILE__ == $PROGRAM_NAME
  simon_game = Simon.new
  simon_game.play
end
