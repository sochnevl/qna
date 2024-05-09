class AnswersController < ApplicationController
  def new; end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to @answer.question, notice: 'Answer was successfully created.'
    else
      render :new
    end
  end

  private

  def answer
    @answer ||= params[:id] ? Answer.find(params[:id]) : Answer.new
  end

  helper_method :answer

  def answer_params
    params.require(:answer).permit(:body, :question_id)
  end
end
