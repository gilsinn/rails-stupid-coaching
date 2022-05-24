class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answer_array = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    @question = params[:question]
    #   @members = @members. { |member| member.start_with?(params[:question]) }
    # end
    # if input is "I am going to work" - answer is "Great!"
    if @question == "I am going to work"
      @answer = answer_array[0]
    elsif @question.end_with?("?")
      @answer = answer_array[1]
    else
      @answer = answer_array[2]
    end
    # if input ends with "?" - answer is "Silly question, get dressed and go to work!"

    # else answer will be "I don't care, get dressed and go to work!"
  end
end
