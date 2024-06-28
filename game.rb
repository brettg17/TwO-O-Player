class Game
  attr_accessor :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def switch_turns
    @current_player = @current_player == player1 ? player2 : player1
  end

  def game_over?
    !player1.alive? || !player2.alive?
  end

  def winner
    player1.alive? ? player1 : player2
  end

  def loser
    player1.alive? ? player2 : player1
  end
end