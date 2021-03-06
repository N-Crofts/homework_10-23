class FoodsController < ApplicationController
  def index
    @fridge = Fridge.find(params[:fridge_id])
    @foods = @fridge.foods
  end

  def new
    @fridge = Fridge.find(params[:fridge_id])
    @food = Food.new
  end

  def show
    @fridge = Fridge.find(params[:fridge_id])
    @food = Food.find(params[:id])
  end

  def create
    @fridge = Fridge.find(params[:fridge_id])
    @fridge.foods.create(food_params)
    redirect_to "/fridges/#{@fridge.id}/foods"
  end

  def destroy
    @fridge = Fridge.find(params[:fridge_id])
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to "/fridges/#{@fridge.id}/foods"
  end

  def edit
    @fridge = Fridge.find(params[:id])
  end

  def update
    @fridge = Fridge.find(params[:id])
    @fridge.update(fridge_params)
    redirect_to "/fridges/#{@fridge.id}"
  end

  private

  def food_params
    params.require(:food).permit(:name, :weight, :vegan, :date_added)
  end

end