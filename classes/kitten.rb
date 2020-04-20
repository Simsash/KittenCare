class Kitten
  attr_accessor :boredom_level, :energy_level, :sleeping, :bored, :grumpy, :hunger_level, :grumpy_level
    def initialize()
        
        @boredom_level = 0
        @energy_level = 5
        @hunger_level = 5 
        @grumpy_level = 2
        @sleeping = false 
        @bored = false
        @grumpy = false 
        @starving = false 
    end

    def reset()
        @boredom_level = 0
        @energy_level = 5
        @hunger_level = 5 
        @grumpy_level = 2
        @sleeping = false 
        @bored = false
        @grumpy = false 
        @starving = false 
    end

    def check_kitten_status()
        puts "#{energy_level}  #{hunger_level}  #{boredom_level}"
        if @boredom_level >= 10 
            @bored = true 
            system("clear")
            puts "your cat is bored of you"
        elsif @energy_level <= 0 
            @sleeping = true 
            system("clear")
           puts "you made your cat fall asleep"
        elsif @hunger_level >= 10
            @starving = true 
            system("clear")
          puts "you made your kitten starve"
        elsif @grumpy_level >= 10
            @grumpy = true 
            system("clear")
            puts "you triggered your kitten"
    
        end 
    end

    def feed()
        if hunger_level == 0
            puts "your kitten is looking a little plump"
        else 
            @energy_level += 3
            @hunger_level -= 3
            @boredom_level += 1
            puts "you have fed your cat"
        end 
    end

     def play()
        if energy_level <= 0
            check_kitten_status()
        else 
            @energy_level -= 3
            @hunger_level += 2
            @boredom_level -= 2
        end     
    end

     def cuddle()
        if grumpy_level == 10
            puts "looks like you're on their bad side now" 
        else 
            @boredom_level += 1 
            @grumpy_level -= 3
            @energy_level += 2
        end 
    end
    
def annoy()
        @boredom_level += 2
        @grumpy_level += 3
        @energy_level += 1
     
    end 
    
    


end 