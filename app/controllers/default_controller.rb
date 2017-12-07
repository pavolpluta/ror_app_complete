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
    set_building
    @room = Room.find(params[:room_id])
  end

  def day_info
    set_building
    @lessons = []
    @building.rooms.each do |room|
      room.lessons.each do |lesson|
        if lesson.start_at.to_date == Date.new(2017,12,6)
          @lessons << lesson
        end
      end
    end
    @lessons = @lessons.sort {|p1,p2| p1.start_at <=> p2.start_at}
  end

  private

  def set_building
    @building = Building.find(params[:id])
  end

end