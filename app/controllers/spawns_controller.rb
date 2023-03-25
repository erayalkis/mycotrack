class SpawnsController < ApplicationController
  def index
    @spawns = Spawn.all
    render json: @spawns
  end

  def get
    @spawn = spawn.find(params[:id])
    render json: @spawn
  end

  # Unused in API mode
  # def new
  # end

  def create
    @spawn = spawn.new(spawn_params)

    if @spawn.save
      render json: @spawn
    else
      render json: @spawn.errors.full_messages, status: :internal_server_error
    end
  end

  # Unused in API mode
  # def edit
  # end

  def update
    @spawn = Cultur.find(params[:id])

    if @spawn.update_attributes(spawn_params)
      render json: @spawn
    else
      render json: @spawn.errors.full_messages, status: :internal_server_error
    end
  end

  def delete
    @spawn = spawn.find(params[:id])
    
    if @spawn.nil?
      render json: ["spawn does not exist"]
    else
      render json: @spawn
    end
  end

  private

  def spawn_params
    params.require(:spawn).permit(:substrate, :culture_id)
  end
end