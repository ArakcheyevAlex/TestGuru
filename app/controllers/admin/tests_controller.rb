class Admin::TestsController < Admin::BaseController
  before_action :set_test, only: %i[show edit update destroy start]

  def edit; end

  def show; end

  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    @test = current_user.created_tests.new(test_params)
    if @test.save
      redirect_to admin_test_path(@test)
    else
      render :new
    end
  end

  def update
    if @test.update(test_params)
      redirect_to admin_test_path(@test)
    else
      render :edit
    end
  end

  def destroy
    @test.destroy

    redirect_to admin_tests_url
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end
end
