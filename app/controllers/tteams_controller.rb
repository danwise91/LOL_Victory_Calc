class TteamsController < ApplicationController
  def index
  end

  def show
    @tteam = Tteam.find(params[:id])
  end

  def create
    @tteam = Tteam.new(tteams_params)
    @tteam.save
    redirect_to @tteam
  end

  private
  def tteams_params
    params.require(:tteam).permit(:p1, :p2, :p3, :p4, :p5, :p6, :c1, :c2, :c3, :c4, :c5, :c6)
  end
end
