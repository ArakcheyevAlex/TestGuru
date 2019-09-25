class QuestionsController < ApplicationController
  before_action :set_test, only: %i[index new create]

  def index
    @questions = @test.questions
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = @test.questions.new
  end

  def create
    @question = @test.questions.new(question_params)

    if @question.save
      redirect_to test_questions_path(@test)
    else
      render plain: 'Error with saving question'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    render plain: 'Question deleted'
  end

  private

  def question_params
    params.require(:question).permit(:test_id, :body)
  end

  def set_test
    @test = Test.find(params[:test_id])
  end
end
