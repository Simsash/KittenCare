require_relative "classes/kitten.rb"
require_relative "game.rb"

kitten = Kitten.new()
game = Game.new()

loop do
  if kitten.boredom_level >= 10 || kitten.energy_level <= 0 ||kitten.hunger_level >= 10 || kitten.grumpy_level >= 10
    puts "lose: to restart enter yes, to close app enter no"
    player_choice = gets.chomp
    restart_option = game.restart(player_choice)
    case restart_option
      when "restart"
        kitten.reset()
        system("clear")
      when "quit"
        break
    end 

  else 
    game.welcome()
    player_choice = gets.to_i
    game.user_choice(player_choice, kitten)
  end 
end 
