module Admin
  class BuildingsController < Admin::AdminController
    def index
      @buildings = Building.all
    end
  end
end