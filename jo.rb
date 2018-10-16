puts "joueur 1: "
joueur_1 = gets.chomp
puts "joueur 2: "
joueur_2 = gets.chomp

class BoardCase
#   #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :valeur, :case_num
  
  def initialize(valeur, case_num)
#     #TO DO doit régler sa valeur, ainsi que son numéro de case
    @valeur = valeur
    @case_num = case_num 
  end
  
  def to_s
#     #TO DO : doit renvoyer la valeur au format string
  end

end

class Board
  include Enumerable
  attr_accessor :num_case
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases


  def initialize
    @A_1 = BoardCase.new	@A_1 = 1
    @A_2 = BoardCase.new	@A_2 = 2
    @A_3 = BoardCase.new	@A_3 = 3
    @B_1 = BoardCase.new	@B_1 = 4
    @B_2 = BoardCase.new	@B_2 = 5
    @B_3 = BoardCase.new	@B_3 = 6
    @C_1 = BoardCase.new	@C_1 = 7
    @C_2 = BoardCase.new	@C_2 = 8
    @C_3 = BoardCase.new 	@C_3 = 9

    @num_case = [ @A_1.to_s, @A_2.to_s, @A_3.to_s, @B_1.to_s, @B_2.to_s, @B_3.to_s, @C_1.to_s, @C_2.to_s, @C_3.to_s]
        # array_case = [1, 2, 3, 4, 5, 6, 7, 8, 9] 
    # array_case.each do |" " i|
    #   BoardCase.new(" ", i)  
  end
 
     #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
  def to_s

  	puts " #{num_case[1]} | #{num_case[2]} | #{num_case[3]}"
  	puts " #{num_case[4]} | #{num_case[5]} | #{num_case[6]}"
  	puts " #{num_case[7]} | #{num_case[8]} | #{num_case[9]}"

  #TO DO : afficher le plateau
  end
end


  def play
#     #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?
#     #TO DO : qui gagne ?
  end
end

class Player
#   #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :nom, :valeur
  attr_writer :etat

  def initialize (nom, valeur)
#     #TO DO : doit régler son nom, sa valeur, son état de victoire
    @nom = nom
    @valeur = valeur
    @etat = nil
  end

class Game

  def initialize
#     #TO DO : créé 2 joueurs, créé un board
  end

  def go
#     # TO DO : lance la partie
  end

  def turn
#     #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end

Game.new.go

puts board = Board.new 