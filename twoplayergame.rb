require 'pry'
#instance variabels for players health, set equal to 3
@player_one_health = 3
@player_two_health = 3


#builds the math question that the players answer
def generate_question()
  number_one = rand(1...20)
  number_two = rand(1...20)
  @answer = number_one + number_two
  p "#{number_one} plus #{number_two}?"
end

# generate_question()

#checks for winnning player
def winning_player()

end


#asks player to put answer in for question
def promtp_player_for_answer
  p "what is your answer?"
  gets.chomp.to_i 

end

#takes the player answer and compares it to the answer in the question
def verify_answer()
  if promtp_player_for_answer == @answer
    return true
  else 
    false
  end
end

# generate_question()
# verify_answer()

#the loop that plays the game
while @player_one_health > 0 && @player_two_health > 0 do
  
  generate_question()
  p ""
  p "PLayer One"
  if verify_answer()
    p "Good Work!"
  else
    @player_one_health -= 1
    p "Whoops that was wrong!"
  end



  generate_question()
  p ""
  p "Player Two"
  if verify_answer()
    p "Good Work!"
  else
    @player_two_health -= 1
    p "Whoops that was wrong!"
  end

  p "Currently the players healths are:"
  p "Player One: #{@player_one_health}"
  p "Player Two: #{@player_two_health}"
  p "---------------------------------"

  if @player_one_health == 0
    p "PLayer Two wins!"
  end
  if @player_two_health == 0
    p "Player One wins!"
  end
end


