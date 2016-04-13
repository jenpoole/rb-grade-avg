require_relative("averages.rb")

class Input
    attr_accessor :student_name, :score1, :score2, :score3, :students_and_scores
    
    def user_input
        @students_and_scores = {}
        counter = 0 
        
        while counter < 25
            puts "Enter student name: "
            @student_name = gets.chomp
            
            puts "Enter first test score: "
            @score1 = gets.chomp.to_i
            
            puts "Enter second test score: "
            @score2 = gets.chomp.to_i
            
            puts "Enter third test score: "
            @score3 = gets.chomp.to_i
            
            puts "Are you done entering student information?"
            @exit_loop = gets.chomp.downcase
            
            # add students and their scores to hash
            @students_and_scores[@student_name] = [@score1, @score2, @score3]
            
            break if @exit_loop == "yes"
            counter += 1
        end
    end
end

x = Input.new
puts x.user_input

grade_calc = Calculator.new
grade_calc.average(x.students_and_scores)