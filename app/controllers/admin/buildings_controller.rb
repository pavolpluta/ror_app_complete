module Admin
  class BuildingsController < Admin::AdminController
    before_action :set_building, only: [:show, :edit, :update, :destroy]

    def new
      @building = Building.new
    end

    def index
      @buildings = Building.paginate(page: params[:page], per_page: 5)
    end

    def edit

    end

    def create
      @building = Building.new(building_params)
      if @building.save
        flash[:success] = "Building was created"
        redirect_to admin_buildings_path
      else
        render 'new'
      end
    end

    def update
      if @building.update(building_params)
        flash[:success] = "Building was successfully updated"
        redirect_to admin_building_path(@building)
      else
        render 'edit'
      end
    end

    def show
      @building_rooms = @building.rooms.paginate(page: params[:page], per_page: 5)
    end

    def destroy
      @building.destroy
      flash[:danger] = "Building was successfully deleted."
      redirect_to admin_buildings_path
    end
    private

    def set_building
      @building = Building.find(params[:id])
    end

    def building_params
      params.require(:building).permit(:title,:code)
    end
  end
end