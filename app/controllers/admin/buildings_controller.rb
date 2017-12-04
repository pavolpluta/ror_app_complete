module Admin
  class BuildingsController < Admin::AdminController
    before_action :set_building, only: [:show, :edit]

    def index
      @buildings = Building.paginate(page: params[:page], per_page: 5)
    end

    def new
      @building = Building.new
    end

    def create
      @building = Building.new(building_params)
      if @building.save
        flash[:success] = "Building was created"
        redirect_to admin_building_path(@building)
      else
        render 'new'
      end
    end

    def edit

    end

    def show
      @building_rooms = @building.rooms.paginate(page: params[:page], per_page: 5)
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