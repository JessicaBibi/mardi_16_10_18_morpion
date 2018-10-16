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
