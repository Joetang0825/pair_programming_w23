class Question
  def initialize
    @question = ""
    @answer = nil
  end

  attr_accessor :question
  attr_accessor :answer

  def generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    @answer = num1 + num2
    @question = "What does #{num1} plus #{num2} equal?"
  end
end