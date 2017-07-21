class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
    attr_accessor :value, :number
    
  def initialize(value, number)
      @value = "X" || "O" || ""
      @number = number
      #TO DO doit régler sa valeur, ainsi que son numéro de case
    
  end
  
  def to_s
    #TO DO : doit renvoyer la valeur au format string
  end

end


class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
    
    attr_accessor :array
    @array = {}
  def initialize(array)
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
      
      @array = {
          "1" => "",
          "2" => "",
          "3" => "",
          "4" => "",
          "5" => "",
          "6" => "",
          "7" => "",
          "8" => "",
          "9" => "",     
          }  
  end

  def to_s
      
  #TO DO : afficher le plateau
    # imprimer seulement value
    puts "| #{array["1"]} | #{array["2"]} | #{array["3"]} |"
    puts "+-1-+-2-+-3-+"
    puts "| #{array["4"]} | #{array["5"]} | #{array["6"]} |"
    puts "+-4-+-5-+-6-+"
    puts "| #{array["7"]} | #{array["8"]} | #{array["9"]} |"
    puts "+-7-+-8-+-9-+"
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
    attr_accessor :nameplayer, :valueplayer
    attr_writer :win
  
  def initialize(nameplayer, valueplayer, win)
    #TO DO : doit régler son nom, sa valeur, son état de victoire
    @nameplayer = nameplayer
    @valueplayer = valueplayer
    @win = win
  end
end

class Game

  def initialize
    #TO DO : créé 2 joueurs, créé un board
player1 = Player.new("", "", "")
player2 = Player.new("", "", "")
puts "Quel est le prénom du joueur 1 ?"
a = gets.chomp
puts " voici le nom du joueur 1 #{a} "
puts "Quel est le prénom du joueur 2 ?"
d = gets.chomp
puts " voici le nom du joueur 2 #{d} "

    board1 = Board.new(array = {
          "1" => "X",
          "2" => "",
          "3" => "O",
          "4" => "",
          "5" => "",
          "6" => "",
          "7" => "",
          "8" => "",
          "9" => "",     
          })
    puts board1.to_s
    
    puts "#{a}, vous êtes les O "
    puts "#{d}, vous êtes les X "
    
    puts " #{a}, veuillez jouer svp en renseignant le n° de case"
    
    action1 = gets.chomp
    
    puts " #{d}, veuillez jouer svp en renseignant le n° de case"
    
    action2 = gets.chomp
        
#action2 = gets.chomp  
#@array["action1"] = "O"
#@array["action2"] = "X"   
#puts "| #{@array["1"]} | #{@array["2"]} | #{@array["3"]} |"
#puts "+-1-+-2-+-3-+"
#puts "| #{@array["4"]} | #{@array["5"]} | #{@array["6"]} |"
#puts "+-4-+-5-+-6-+"
#puts "| #{@array["7"]} | #{@array["8"]} | #{@array["9"]} |"
#puts "+-7-+-8-+-9-+"
  end

  def go
    # TO DO : lance la partie
  end

  def turn

    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie

   
  end


end

#Idées amélioration: Couleurs

Game.new.go
