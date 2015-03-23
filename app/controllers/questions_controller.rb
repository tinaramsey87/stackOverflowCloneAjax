class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    flash[:notice] = "Question successfully added."
    redirect_to questions_path
  end


  private

  def question_params
    params.require(:question).permit(:title, :content)
  end
end