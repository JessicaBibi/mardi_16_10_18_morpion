class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :value, :number_case

  
  def initialize
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    @value = value
    @number_case = number_case
  end
  
  def to_s
    #TO DO : doit renvoyer la valeur au format string
    return "#{value}"
  end

end