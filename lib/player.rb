require "pry"
class Player
    attr_accessor :name, :life_points  
    #on definit les valiables de la classe

    def initialize(name)
        @name = name
        @life_points = 10
    end
    # initializer les variables de la classe

    def show_state
    puts "#{@name} a #{@life_points} points de vie"
    end
    #on connait l'état du joueur 

    def gets_damage(intensity)
        @life_points= @life_points - intensity
        if @life_points <= 0 
            puts "le joueur #{@name} a été tué!"
            puts "End of the game!"
            exit  # pour arreter le jeu une fois que qqn est mort
        end
    end

    def attacks(player2)
        puts "le joueur #{@name} attaque le joueur #{player2.name}"
        damage = compute_damage
        puts "il lui inflige #{damage} points de dommages"
        player2.gets_damage(damage)
        gets # pour effectuer des pauses à chaque ataque 
    end 

    def compute_damage
        return rand(1..6)
    end

end

binding.pry
puts "end of file"