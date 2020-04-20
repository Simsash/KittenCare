require_relative "classes/kitten.rb"

class Game
    
    def welcome() 
        puts "Welcome to kitten care simulation!".center(50)
        puts "What would you like to do?".center(50)
        puts "Enter 1: To feed the kitten".center(50) 
        puts "Enter 2: To play with the kitten".center(50)
        puts "Enter 3: To cuddle the kitten".center(50)
        puts "Enter 4: To annoy the kitten".center(50)
    end

    def restart(player_choice)
        case player_choice
            when "yes"
                puts "restarting"
                return "restart"
            when "no"
                puts "quit"
                return "quit"
            else 
                puts "choose yes or no"
                return "invalid"
        end 
    end 

    def user_choice(player_choice, kitten)
        case player_choice 
            when 1 
                puts "Feeding"
                kitten.feed()
                system("clear")
                kitten.check_kitten_status()
            when 2 
                puts "Playing"
                kitten.play()
                system("clear")
                kitten.check_kitten_status()
            when 3 
                puts "Cuddling"
                kitten.cuddle()
                system("clear")
                kitten.check_kitten_status()
            when 4
                puts "Annoying"
                kitten.annoy()
                system("clear")
                kitten.check_kitten_status()
            else 
                puts "Please enter 1, 2, 3, 4"
        end 
    end 
end 