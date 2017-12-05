module Admin
  class RoomsController < Admin::AdminController
    before_action :set_building
    # before_action :set_room, only: [:show, :edit, :update, :destroy]

    def new
    #  @building = Building.find(params[:building_id])
      @room = Room.new(building: @building)
    end

    # def create
    #
    # end
    #
    # def edit
    #
    # end
    #
    # def update
    #
    # end
    #
    # def show
    #
    # end
    #
    # def destroy
    #
    # end
    #
    private

    def set_building
      @building = Building.find(params[:building_id])
    end
    #
    # def set_room
    #   @room = Room.find(params[:id])
    # end
  end
end