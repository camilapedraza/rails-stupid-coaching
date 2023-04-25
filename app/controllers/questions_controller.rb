class QuestionsController < ApplicationController
  def ask
    @questions = ["Ça va?", "Ça roule"]
  end

  def answer
    @question = params[:question]
    # @answer = String.new
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.last == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
