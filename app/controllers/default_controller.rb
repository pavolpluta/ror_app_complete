class DefaultController < ApplicationController

  def buildings
    @buildings = Building.all
  end

  def show
    set_building
    @building_rooms = @building.rooms

  end

  def contact

  end

  def schedule

  end

  def day_info

  end

  private

  def set_building
    @building = Building.find(params[:id])
  end

end