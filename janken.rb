# Ecrivez la logique pour que le joueur (vous) entre "0~2".
class Player
  def hand
    # Affichez un texte demandant au joueur de choisir un mouvement de pierre-papier-ciseaux.
    puts "Please enter a number."
    puts "0: Goo, 1: Choki, 2: Par"
    # Assignez la valeur d'entrée du joueur à la variable "input_hand".
    # Astuce : regardez la méthode gets !
    input_hand = gets.chomp
    # 「input_hand」est l'un de '0, 1 ou 2', le processus d'itération est terminé, sinon (y compris les caractères alphabétiques) le processus d'itération est poursuivi.
    while true
      # si "input_hand" est l'un de "0, 1, 2".
      unless input_hand == "0" || input_hand == "1" || input_hand == "2"
        puts "Veuillez entrer un nombre entre 0 et 2."
        # Conseil : si vous souhaitez renvoyer une valeur de retour pour mettre fin au processus itératif, utilisez "return".
        else
          return input_hand.to_i  # sinon Sinon
      end
         # Affiche un texte demandant au joueur d'entrer "0 à 2".
          puts "0〜2のVeuillez entrer un numéro."
          puts "0: Goo, 1: Choki, 2: Par"
            input_hand = gets.chomp # Assignez la valeur d'entrée du joueur à la variable "input_hand".
          # end if statement end
    end
  end
end
# Écrire une logique où l'adversaire génère aléatoirement une valeur de "0~2".
class Enemy
  def hand
    return rand(0..2) # Obtenez une valeur aléatoire pour Goo, Choki ou Par.
  end
end
# Écrivez la logique pour que le joueur (vous) saisisse "0~2" et que l'ennemi génère aléatoirement "0~2" et joue à pierre-papier-ciseaux, et affichez le résultat sur la console.
class Janken
  def pon(player_hand, enemy_hand)
    # Remplacez ["goo", "choki", "par"] la variable "janken".
    janken = ["Goo", "Choki", "Par"]
    # Le coup de l'adversaire est #{coups de l'adversaire}. à la sortie
    puts "La main de l'adversaire est #{janken[enemy_hand]}。"
    #Create logic to play rock-paper-scissors from the return value of the Player class and the return value of the Enemy class.
    if player_hand == enemy_hand # Playerクラスの戻り値(player_hand)とEnemyクラスの戻り値(enemy_hand)の値が同じだった場合
      # "Aiko" is output.
      puts "amour"
      return true
      # Returns "true" to run rock-paper-scissors repeatedly.
      # Conseil : vous pouvez utiliser "return" pour renvoyer une valeur de retour. Cependant, en Ruby, il est courant d'omettre le "return" lorsque l'on renvoie une valeur de retour.。
    elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      puts "vous avez gagné"
      #renvoie "false" et met fin à pierre-papier-ciseaux.
      return false

    else
    puts "Vous avez perdu"  #Print "Vous avez perdu".
    return false  #renvoie "false" et met fin à pierre-papier-ciseaux.
    end
  end
end
# Écrire la logique pour exécuter le jeu de pierre-papier-ciseaux.
class GameStart
# En utilisant self, vous pouvez appeler la méthode jankenpon en utilisant le nom de la classe sans instancier GameStart.
  def self.jankenpon
    #Substitute the instantiated Player for the variable "player".
    player = Player.new
    # Assign an instantiation of Enemy to the variable "enemy".
    enemy = Enemy.new
    # Assign an instantiation of Janken to the variable "janken".
    janken = Janken.new
      next_game = true# 変数「next_game」に「true」を代入しましょう。
    # 「next_game」が「false」だと繰り返し処理を終了し、「true」だと繰り返し処理を継続します。
    while next_game
      # Substitute the value (return value) returned by executing rock-paper-scissors into the variable "next_game".
      #「janken.pon(player.hand, enemy.hand)」でじゃんけんを実行しています。
      next_game = janken.pon(player.hand, enemy.hand)
    end
  end
end
# Call the jankenpon method with the class name.
GameStart.jankenpon
