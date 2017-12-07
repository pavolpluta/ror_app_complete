module Admin
  class DashboardController < Admin::AdminController
    def index
      @buildings = Building.all
      @courses = Course.all
      @students = Student.all
      @teachers = Teacher.all
    end
  end
end