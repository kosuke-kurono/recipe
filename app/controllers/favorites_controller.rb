class FavoritesController < ApplicationController
  def create
    # カレントユーザーに紐づくお気に入りレシピの登録
    @favorite = current_user.favorites.create(cook_id: params[:cook_id])
    
    # お気に入り登録をした場所にリダイレクト(詳細 or 一覧)
    redirect_back(fallback_location: root_path)
  end
  def destroy
    @cook = Cook.find(params[:cook_id])
    @favorite = current_user.favorites.find_by(cook_id: @cook.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
