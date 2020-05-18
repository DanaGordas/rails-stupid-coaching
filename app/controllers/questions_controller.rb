class QuestionsController < ApplicationController
  def ask
    # ask action
  end

  def answer
    @question = params[:question]
    @answer = ''
    if @question.present?
      if @question == 'I am going to work'
        @answer = 'Great!'
      elsif @question.include?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
