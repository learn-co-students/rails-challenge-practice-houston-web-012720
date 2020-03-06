class BuildingsController < ApplicationController

    def index
        @buildings = Building.all
    end

    def show
        @building = Building.find(params[:id])
    end

    def edit
        @building = Building.new
    end

    def update
        @building = Building.create(building_params)
    end

    private

    def building_params
        params.require(:building).permit(:name, :country, :address, :rent_per_floor, :number_of_floors)
    end

end