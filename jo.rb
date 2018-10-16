puts "joueur 1: "
joueur_1 = gets.chomp
puts "joueur 2: "
joueur_2 = gets.chomp

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :valeur, :case_num
  
  def initialize(valeur, case_num)
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    @valeur = valeur
    @case_num = case_num 
  end
  
  def to_s
    #TO DO : doit renvoyer la valeur au format string
  end

end

class Board
  # include Enumerable
  attr_accessor :array_case
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases


  def initialize
    
    # case_2 = BoardCase.new(" ", 2)
    array_case = [1, 2, 3, 4, 5, 6, 7, 8, 9] 
    array_case.each do |i|
      BoardCase.new(" ", i)  
    end  


  end
     #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe



  def to_s
  #TO DO : afficher le plateau

  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?
    #TO DO : qui gagne ?
  end
end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :nom, :valeur
  attr_writer :etat

  def initialize (nom, valeur)
    #TO DO : doit régler son nom, sa valeur, son état de victoire
    @nom = nom
    @valeur = valeur
    @etat = nil
  end

class Game
  def initialize
    #TO DO : créé 2 joueurs, créé un board
  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end

# Game.new.go

puts board = Board.new 