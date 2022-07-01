require './player'
require './question'

class Game
  def initialize ()
    @winner = nil
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @question = Question.new()
    @current_player = @player1
    user_input = nil;
  end

  attr_reader :question
  attr_reader :winner

  def start_game ()
    while @winner == nil
      puts "#{@current_player.name}: #{@question.generate_question}"
      user_input = gets.chomp.to_i
      # puts question.answer
      if user_input == @question.answer
        puts "YES! You are correct"
      else
        puts "#{@current_player.name}: Seriously? No!"
        @current_player.subtract_score()
        # puts "#{@current_player.name} has #{@current_player.score} scores"
        if @current_player.score == 0
          switch_player()
          @winner = @current_player
          # puts "winner here: #{winner.name}"
          break
        end
      end
      puts "---- NEW TURN ----"
      switch_player()
    end
    puts "#{winner.name} wins with a score of #{winner.score}/3"
    puts "---- GAME OVER ----"
    puts "Good bye!"
  end

  def switch_player ()
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end 
end
