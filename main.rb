puts "Player 1: What does 5 plus 3 equal?"
answer = gets.chomp
correctAnswer = 8

def questionChecker(answer, correctAnswer)
    answer.to_i === correctAnswer
end 

if questionChecker(answer, correctAnswer)
    puts "You are correct, #{answer} is the answer."
else
    puts "Incorrect!"
end