class Turn
  attr_accessor :current_player, :game

  def initialize(current_player, game)
    @current_player = current_player
    @game = game
  end

  def execute_turn
    question = Question.new 
    puts "#{current_player.name}: #{question.generate_question}"

    print "> "
    player_answer = gets.chomp.to_i

    if question.check_answer(player_answer)
      puts "#{current_player.name}: YES! You are correct."
    else
      puts "#{current_player.name}: Seriously? No!"
      current_player.lose_life
    end

    display_scores
  end

  def display_scores
    puts "P1: #{game.player1.lives}/3 vs P2: #{game.player2.lives}/3"
    puts "------ NEW TURN ------" unless game.game_over?
  end
end