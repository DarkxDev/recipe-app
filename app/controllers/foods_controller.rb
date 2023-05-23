class FoodsController < ApplicationController
  def index
    @current_user = current_user
    @foods = @current_user.foods
  end

  def add
    @current_user = current_user
  end

  def create
    @current_user = current_user
    @food = @current_user.foods.new(food_params)

    if @food.save
      redirect_to foods_path, notice: 'Food was successfully created'
    else
      render :new
    end
  end

  private

  def food_params
    params.require(:food).permit(:name)
  end
end
