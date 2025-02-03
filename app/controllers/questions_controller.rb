class QuestionsController < ApplicationController
  def ask

  end

  def answer
    if ["I am going to work", "I'm going to work"].include? params[:question]
      @answer = "Great!"
    elsif params[:question].end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work"
    end
  end
end
