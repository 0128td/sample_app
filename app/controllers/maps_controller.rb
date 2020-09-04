class MapsController < ApplicationController

  def index
    @maps = Map.all.order(id: :asc)

  end

  def create
    @map = Map.new(place: params[:place],
                   map_comment: params[:map_comment],
                   latitude: params[:latitude],
                   longitude: params[:longitude])

    if @map.save
      flash[:notice] = "登録しました"
      redirect_to("/map")
    else
      flash[:notice] = "登録に間違いがあります"
      render("maps/index")

    end

  end

  def destroy
    @map = Map.find_by(id: params[:id])

    if @map.destroy
      flash[:notice] = "削除しました"
      redirect_to("/map")
    end

  end

  def view
    @map = Map.find_by(id: params[:id])

  end

  def edit

  end

end
