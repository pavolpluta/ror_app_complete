module Admin
  class DashboardController < Admin::AdminController
    def index
      @buildings = Building.all
    end
  end
end