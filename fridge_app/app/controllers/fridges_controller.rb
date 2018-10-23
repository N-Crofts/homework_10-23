class FridgesController < ApplicationController
  def index
    @fridges = Fridge.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
