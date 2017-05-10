class FilmsController < ApplicationController
  def create
    @film = Film.new(film_params)

    if @film.save
      flash[:notice] = "New Film"
      redirect_to films_path(@film)
    else
      flash[:error] = "Not created"
      render :new
    end
  end

  def index
    @film = Film.all
  end

  def show
    @film = Film.find(params[:id])
  end

  private

  def film_params
    params.require(:film).permit(:title, :episode_id, :director, :characters, :image )
  end
end
