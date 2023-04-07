class SpawnsController < ApplicationController
  def index
    @spawns = Spawn.all.where(user_id: current_user.id)
    render json: @spawns
  end

  def get
    @spawn = Spawn.find(params[:id])
    render json: @spawn
  end

  # Unused in API mode
  # def new
  # end

  def create
    @spawn = Spawn.new(spawn_params)

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
    @spawn = Spawn.find(params[:id])

    if @spawn.update(spawn_params)
      render json: @spawn
    else
      render json: @spawn.errors.full_messages, status: :internal_server_error
    end
  end

  def delete
    @spawn = Spawn.find(params[:id])
    
    if @spawn.nil?
      render json: ["spawn does not exist"]
    else
      render json: @spawn
    end
  end

  private

  def spawn_params
    params.require(:spawn).permit(:substrate, :culture_id, :user_id)
  end
end
