class CooksController < ApplicationController
  def index
  end

  def show
    @cook = Cook.find(params[:id])
  end

  def new
    @cook = Cook.new
  end
  def create
    @cook = Cook.new(cook_params)
    @cook.user_id =current_user.id
    @cook.save
    redirect_to cook_path(@cook)
  end
  def edit
  end
  private
  def cook_params
    params.require(:cook).permit(:title,:body,:image)
  end
end
