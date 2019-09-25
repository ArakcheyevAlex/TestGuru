class QuestionsController < ApplicationController
  def index
    @test = Test.find(params[:test_id])
    @questions = @test.questions
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @test = Test.find(params[:test_id])
    @question = @test.questions.new
  end

  def create
    @test = Test.find(params[:test_id])
    @question = @test.questions.new(question_params)

    if @question.save
      redirect_to test_questions_path(@test)
    else
      render plain: 'Error with saving question'
    end
  end

  private

  def question_params
    params.require(:question).permit(:test_id, :body)
  end
end
