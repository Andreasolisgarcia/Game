require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "À ma droite #{player1.name} "
puts "À ma gauche #{player2.name} "     #on present les joueurs
gets

puts "Voici l'état de chaque joueur :"
puts player1.show_state                 #on present l'état de vie de chaque joueur 
puts player2.show_state

puts "Passons à la phase d'attaque :"
gets

while  player1.life_points >= 0 || player2.life_points >= 0    #condition loop pour continuer le jeu
            player1.attacks(player2)    
            player2.attacks(player1)
end

binding.pry
