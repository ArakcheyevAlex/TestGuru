class QuestionsController < ApplicationController
  def index
    @test = Test.find(params[:test_id])
    @questions = @test.questions
  end

  def show
    @question = Question.find(params[:id])
  end
end
