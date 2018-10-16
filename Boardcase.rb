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
