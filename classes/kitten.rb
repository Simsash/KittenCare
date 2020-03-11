class Kitten
  attr_accessor :name, :sex, :boredom_level, :energy_level, :sleeping, :bored, :grumpy, hunger_level, :grumpy_level
    def initialize(name , sex )
        @name = name 
        @sex = sex
        @boredom_level = 0
        @energy_level = 5
        @hunger_level = 5 
        @grumpy_level = 2
        @sleeping = false 
        @bored = false
        @grumpy = false 
        @starving = false 
    end

    def feed()
    if hunger_level == 0
    puts "kitten is chunky"
    else 
    energy_level += 3
    hunger_level -= 2
    boredom_level += 1
    puts "you have fed your cat"
        end 

    end

     def play()
    if energy_level == 0
    puts "this a tired kitten"
    else 
    energy_level -= 2
    hunger_level += 3
    boredom_level -= 3
        end     
    end

     def cuddle()
    if grumpy_level == 10
    puts "your cat doesn't love you anymore" 
    else 
    boredom_level += 1 
    grumpy_level -= 3
    energy_level += 2
        end 
    end
    def annoy()
    boredom_level += 2
    grumpy_level += 3
    energy_level += 1
        end 
    end 
    def check_kitten_status()
    if boredom_level == 10 
    bored = true 
    elsif energy_level == 0 
    sleeping = true 
    elsif hunger_level == 10
    starving = true 
    elsif grumpy_level == 10
    grumpy = true 
        end 

    end 

end 