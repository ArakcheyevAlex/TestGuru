class TestsController < ApplicationController
  before_action :authenticate_user!, only: :start
  before_action :set_test, only: :start

  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def start
    current_user.tests.push(@test)

    redirect_to current_user.test_passage(@test)
  end

  private

  def set_user
    @user = User.first
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end

  def set_test
    @test = Test.find(params[:id])
  end
end
