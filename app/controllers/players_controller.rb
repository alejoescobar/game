class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      flash[:notice] = "El jugador se ha creado"
      redirect_to :action => 'new'
    else
      render :action => 'new'
    end
  end

  private

  def player_params
    params.require(:player).permit(:email, :name, :username, :points, :active)
  end
end
