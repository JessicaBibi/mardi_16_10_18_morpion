

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :valeur, :case_number
  
  def initialize (valeur, case_number)
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    @valeur = valeur
    @case_number = case_number
  end
  
  def to_s
    #TO DO : doit renvoyer la valeur au format string
    return @valeur.to_s 
  end

end

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :array_cases

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    @array_cases = Array.new
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    9.times do |i|
      @array_cases.push(BoardCase.new(nil,i+1))
    end

  end

  def to_s
  #TO DO : afficher le plateau

    @array_cases.length.times do |i|
      if @array_cases[i].valeur == nil
        print "#{@array_cases[i].case_number}        "
      else 
        print "#{@array_cases[i].valeur}        "
      end 

      if i+1 == 3
        puts " "
      elsif i+1 == 6
        puts " "
      else 
    
      end
        
    end 
    puts " "
  end

  def play (case_selec, valeur_player)
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
      @array_cases[case_selec-1].valeur = valeur_player
  end

  def victory?
    #TO DO : qui gagne ?
  end

end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
attr_accessor :nom_player, :valeur_player
attr_writer :status
attr_reader :list_case_p
  
  def initialize (nom_player, valeur_player)
    #TO DO : doit régler son nom, sa valeur, son état de victoire
      @nom_player = nom_player
      @valeur_player = valeur_player
      @status = "il a gagné ?"

      @list_case_p = Array.new
  end

  def list_case(case_num)  #List the cases that belongs to the player
      
      @list_case_p.push(case_num)
  end 
end 

class Game

   @@all = 0    

   #compte le nombre de parties
  def count
    return @@all
  end

  def initialize
    #TO DO : créé 2 joueurs, créé un board
    puts "Prénom de joueur No. 1"
    print ">"
    nom_1 = gets.chomp

    puts "Prénom de joueur No. 2"
    print ">"
    nom_2 = gets.chomp
    
    @joueur_1 = Player.new(nom_1, "X")
    @joueur_2 = Player.new(nom_2, "O")

    #Crée un board
    @board = Board.new

    @@all += 1

    

  end

  def go
    # TO DO : lance la partie
    self.turn
  end

  def turn
    #TO DO : affiche le plateau, 
    @board.to_s

    #variables pour le jeu
    gameover = 0
    player_1_turn = true
    case_possible = [1,2,3,4,5,6,7,8,9] #9 cas possibles dans le tableau au début du jeu
    text_status = " "

    #demande au joueur il joue quoi, 
    while gameover == 0  
      if player_1_turn  #PLayer 1 turn
        puts "#{@joueur_1.nom_player} your turn:"
        print ">"
        move = gets.chomp.to_i

        if !case_possible.include?(move)  
          puts "#{@joueur_1.nom_player} case déjà occupé!"

        else
          case_possible.delete(move)    #enleve option de case possible

          @board.play(move,@joueur_1.valeur_player) #changer la valeur de vide à X

          @joueur_1.list_case(move)   #adds case to player's list
          # puts "1: #{@joueur_1.list_case(move)}" ###

          player_1_turn = false

        end 

      else
                #PLayer 2 turn
        puts "#{@joueur_2.nom_player} your turn:"
        print ">"
        move = gets.chomp.to_i

        if !case_possible.include?(move)
          puts "#{@joueur_2.nom_player} case déjà occupé!"

        else
          case_possible.delete(move)  #enleve option de case possible
          @board.play(move,@joueur_2.valeur_player) #changer la valeur de vide à O


          @joueur_2.list_case(move) #adds case to player's list
          # puts "2: #{@joueur_2.list_case(move)}" #####
         
          player_1_turn = true
        end
      end 

 
      if case_possible.empty?   #Plus d`options dans le tableau gameover = 1
        gameover = 1
        text_status = "Match nul!"
      end
      # puts " "

      @board.to_s

      #vérifie si un joueur a gagné, 
      
      win_blocks = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
      win_blocks.each {|b| 
        # print b - @joueur_1.list_case_p
        if ((b - @joueur_1.list_case_p).empty?)   #joueur 1 a gagne?
          gameover = 1
          # if player_1_turn 
          #     puts "#{@joueur_2.nom_player} wins!"
          if !player_1_turn 
              text_status = "#{@joueur_1.nom_player} wins!"
              @joueur_1.status = "Victoire!"
              @joueur_2.status = "Défaite :("
          # else
          #     puts "Match nul!"
          end 

        elsif ((b - @joueur_2.list_case_p).empty?)  #joueur 2 a gagne?
            gameover = 1
            if player_1_turn 
              text_status = "#{@joueur_2.nom_player} wins!"
              @joueur_1.status = "Défaite :("
              @joueur_2.status = "Victoire"
            end 
             
        else 
             
        end 
    }
    puts text_status


      
    end
    puts "Une autre partie? 1: Oui/ 0: Non"
    print ">"
    other_game = gets.chomp.to_i

    if other_game == 1
      Game.new.go
    else
      puts "à la prochain"
    end 

  end

end


Game.new.go

