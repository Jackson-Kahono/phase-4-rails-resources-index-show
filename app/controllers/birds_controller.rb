class BirdsController < ApplicationController

  def index
    birds = Bird.all
    render json: birds
  end

  def show
    bird = Bird.find_by(id: params[:id])
    render json: bird
  end

  #POST /birds
  def create
    bird = Bird.create(name: params[:name], species: params[:species])
    render json: bird
  end

  #PATCH /birds/:id
  def update
    bird = Bird.find_by(id: params[:id])
    bird.update(name: params[:name], species: params[:species])
    render json: bird
  end

  #DELETE /birds/:id
  def destroy
    bird = Bird.find_by(id: params[:id])
    bird.destroy
    render json: bird
  end
  
end
