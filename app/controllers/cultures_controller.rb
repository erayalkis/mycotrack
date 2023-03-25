class CulturesController < ApplicationController
  def index
    @cultures = Culture.all
    render json: @cultures
  end

  def get
    @culture = Culture.find(params[:id])
    render json: @culture
  end

  # Unused in API mode
  # def new
  # end

  def create
    @culture = Culture.new(culture_params)

    if @culture.save
      render json: @culture
    else
      render json: @culture.errors.full_messages, status: :internal_server_error
    end
  end

  # Unused in API mode
  # def edit
  # end

  def update
    @culture = Cultur.find(params[:id])

    if @culture.update_attributes(culture_params)
      render json: @culture
    else
      render json: @culture.errors.full_messages, status: :internal_server_error
    end
  end

  def delete
    @culture = Culture.find(params[:id])
    
    if @culture.nil?
      render json: ["Culture does not exist"]
    else
      render json: @culture
    end
  end
end