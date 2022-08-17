class PlantsController < ApplicationController
  def create
    @garden = Garden.find(params[:garden_id]) # on recupère le jardin avec les params
    @plant = Plant.new(plant_params) # on construit la plant avec les strong params

    @plant.garden = @garden # on assigne un garden à la plant

    if @plant.save
      redirect_to garden_path(@garden)
    else
      @plants = @garden.plants
      render "gardens/show", status: :unprocessable_entity
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
