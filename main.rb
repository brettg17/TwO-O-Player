require_relative 'player'
require_relative 'game'
require_relative 'turn'
require_relative 'question'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
game = Game.new(player1, player2)

while !game.game_over? do
  turn = Turn.new(game.current_player, game)
  turn.execute_turn
  game.switch_turns
end

puts "#{game.winner.name} wins with a score of #{game.winner.lives}/3"
puts "#{game.loser.name} loses with a score of #{game.loser.lives}/3"
puts "----- GAME OVER -----"