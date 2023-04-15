class BlocksController < ApplicationController
  def index
    @blocks = Block.all.where(id: current_user.id)
    render json: @blocks
  end

  def get
    @block = Block.find(params[:id])
    render json: @block
  end

  # Unused in API mode
  # def new
  # end

  def create
    @block = Block.new(block_params)

    if @block.save
      render json: @block
    else
      render json: @block.errors.full_messages, status: :internal_server_error
    end
  end

  # Unused in API mode
  # def edit
  # end

  def update
    @block = Block.find(params[:id])

    if @block.update(block_params)
      render json: @block
    else
      render json: @block.errors.full_messages, status: :internal_server_error
    end
  end

  def destroy
    @block = Block.find(params[:id])
    
    if @block.nil?
      render json: ["block does not exist"]
    else
      @block.destroy
      render json: @block
    end
  end

  private

  def block_params
    params.require(:block).permit(:substrate, :spawn_id, :user_id, :status)
  end
end
