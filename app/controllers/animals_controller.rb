class AnimalsController < ApplicationController
  def index
    @animals =  Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(
    name: params[:animal][:name],
    species: params[:animal][:species],
    age: params[:animal][:age]
    )
    if @animal.save
      redirect_to animals_path
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    result = @animal.update({
      name: params[:animal][:name],
      species: params[:animal][:species],
      age: params[:animal][:age]      })
      if result
        # successful
        redirect_to animal_path(@animal.id)
      else
        # fail
        render :edit
      end
  end

  def delete
    animal = Animal.find(params[:id])
    if animal.destroy
      redirect_to animals_path
    else
    end
  end
end
