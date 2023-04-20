class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = answer_question(params[:question])
  end

  def answer_question(question)
    if question == 'I am going to work'
      return 'Great!'
    elsif question[question.length - 1] == '?'
      return 'Silly question, get dressed and go to work!'
    end

   "I don't care, get dressed and go to work!"
  end
end
