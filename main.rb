
class Game
    def initialize
        @player = player1
        @correctAnswer = 8 
    end

    def ask_question
    puts "#{@player}: What does 5 plus 3 equal?"
    end
    def get_answer
        answer = gets.chomp.to_i
    end


    def questionChecker(answer, correctAnswer)
        answer.to_i == correctAnswer
    end 

    def give_feedback
        if questionChecker
            puts "You are correct #{@player}, #{@answer} is the answer."
    else
        puts "Incorrect!"
    end

end

end

game=Game.new
game.ask_question
game.get_answer
game.give_feedback