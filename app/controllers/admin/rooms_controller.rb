module Admin
  class RoomsController < Admin::AdminController
    before_action :set_building
    before_action :set_room, only: [:show, :edit, :update, :destroy]

    def new
      @room = Room.new(building: @building)
    end

    def create
      @room = Room.new(room_params)
      @room.building = @building

      if @room.save
        flash[:success] = "Room was saved"
        redirect_to admin_building_path(@building)
      else
        render 'new'
      end
    end

    def edit

    end

    def update
      if @room.update(room_params)
        flash[:success] = "Room was updated"
        redirect_to admin_building_path(@building)
      end
    end

    def show

    end
    #
    def destroy
      @room.destroy
      flash[:danger] = "Room was deleted"
      redirect_to admin_building_path(@building)
    end

    private

    def set_building
      @building = Building.find(params[:building_id])
    end

    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:title, :code)
    end

end
end