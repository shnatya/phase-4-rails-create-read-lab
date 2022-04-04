class PlantsController < ApplicationController
    #GET /plants
    def index
        plants = Plant.all
        render json: plants, status: :ok
    end

    #GET /plants/:id
    def show
        plant = Plant.find_by_id(params[:id])
        render json: plant, status: :ok
    end 

    #POST /plants
    def create 
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end

