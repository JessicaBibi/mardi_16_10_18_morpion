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
