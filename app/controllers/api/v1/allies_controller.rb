class Api::V1::AlliesController < ApplicationController
  before_action :get_allies, only: [:show, :update, :delete]

  def index
    @allies = Ally.all
    render json: @allies
  end

  def show
    render json: @ally
  end

  def create
    @ally = Ally.new(ally_params)
    if @ally.save
      render json: @ally
    else
      render json: {status: 'ERROR', message: 'A new ally was not able to be created', data: @ally.errors}, status: :unproccessable_entity
    end
  end

  def update
    if @ally.update(ally_params)
      render json: @ally
    else
      render json: {status: 'ERROR', message: 'Ally not updated', data: @ally.errors}, status: :unproccessable_entity
    end
  end

  private

  def ally_params
    params.permit(:name, :house, :strength)
  end

  def get_allies
    @ally = Ally.find(params[:id])
  end
end
