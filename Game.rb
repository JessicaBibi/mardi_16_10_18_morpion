require_relative 'Board.rb'
require_relative 'Boardcase.rb'
require_relative 'Player.rb'

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :player_name, :player_vlaue
  attr_writer :status
  attr_reader :

  
  def initialize(player_name)
    #TO DO : doit régler son nom, sa valeur, son état de victoire
    @player_name = player_name

  end