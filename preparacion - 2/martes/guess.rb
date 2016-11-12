class NumberGuessingGame
  def initialize
      @number = rand(1..10)
      @num_guesses = 0
      guess
  end
    def guess(num=0)
      puts "I'm thinking of a random number from 1 to 10"
      puts "Can you guess it?"loop do
        print "What is your guess? "
        guess = gets.chomp.to_i
        @num_guesses += 1
        unless guess == @number
           message = if guess > @number
             "Too high"
          else
            "Too low"
          end
          puts message
        else
          puts "You got it!"
          puts "It took you #{@num_guesses} guesses."
          print "Are you ready to play again? (y/n): "
          answer = STDIN.gets.chomp
          answer == "y" ? guess : break
        end
      end
    end
  end

# Pruebas

game = NumberGuessingGame.new
p game.guess(5) == "Too low"

p game.guess(8) == "Too high"

p game.guess(7) == "Too high"

p game.guess(6) == "You got it!"