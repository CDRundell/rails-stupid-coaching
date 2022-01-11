class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(reply)
    if reply == 'I am going to work'
      'Great!'
    elsif reply.include?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
    # ANSWER_QUESTION : ((str === QUESTION_WORK) ? ANSWER_WORK : ANSWER_ELSE)
  end
end
