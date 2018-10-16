class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :position


  def initialize(position)
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    @position = BoardCase.new
    @position = position[1..9]

  end

  def to_s
  #TO DO : afficher le plateau
  puts " #{position[1]} | #{position[2]} | #{position[3]}"
  10.times do puts "-"
  end
  puts " #{position[4]} | #{position[5]} | #{position[6]}"
  10.times do puts "-"
  end
  puts " #{position[7]} | #{position[8]} | #{position[9]}"

  end

  def play(player_name, value)
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
    puts "#{player_name} choose a position between 1 and 9"
    number_case = gets.chomp.to_i
  end

  def victory?
    #TO DO : qui gagne ?
    if (@position[1] == @position[2] && @position[2] == @position[3]) || 
       (@position[4] == @position[5] && @position[5] == @position[6]) || 
       (@position[7] == @position[8] && @position[8] == @position[9]) || 
       (@position[1] == @position[5] && @position[5] == @position[9]) || 
       (@position[3] == @position[5] && @position[5] == @position[7]) || 
       (@position[1] == @position[4] && @position[4] == @position[7]) || 
       (@position[2] == @position[5] && @position[5] == @position[8]) || 
       (@position[3] == @position[6] && @position[6] == @position[9])
    return "Victory"
    end
  end
end