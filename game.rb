require_relative 'player'
require_relative 'question'

## starts game 
class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  ##starts game loop 
  def start
    game_loop
  end 




## ask player question 
def ask_question
    @current_question = Question.new
    puts "#{@current_player.name}, #{@current_question.text}"
end

## game over condition 
def game_over
    @player1.lives == 0 || @player2.lives == 0
end

## collect answer from player input 
def get_answer
    gets.chomp.to_i
end

## checking if answer is correct 
def question_checker(answer)
    unless answer.to_i == @current_question.answer
        @current_player.lose_life
    end
end

## prints lives each round 
def print_lives
    puts "#{@player1.name} has #{@player1.lives},#{@player2.name} has #{@player2.lives} "
end

## defines game_winner 
def game_winner 
    if @player1.lives == 0
        puts "Player 2 wins!"
    else 
        puts "Player 1 wins!"
    end
end

  #switches player 
def switch_player
    if @current_player == @player1 
        @current_player = @player2
    else 
        @current_player = @player1
    end
end


## game loop 
def game_loop
    while !game_over
    ask_question
    answer = get_answer
    question_checker(answer)
    print_lives
    switch_player
end
    
game_winner
end

end

game = Game.new
game.start