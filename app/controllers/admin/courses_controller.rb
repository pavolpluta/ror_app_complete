module Admin
  class CoursesController < Admin:: AdminController
    before_action :set_course, only: [:show, :edit, :update, :destroy]

    def new
      @course = Course.new
    end

    def index
      @courses = Course.search(params[:search]).paginate(page: params[:page], per_page: 10)
    end

    def edit

    end

    def create
      @course = Course.new(course_params)
      if @course.save
        flash[:success] = "Course was created"
        redirect_to admin_courses_path
      else
        render 'new'
      end
    end

    def update
      if @course.update(course_params)
        flash[:success] = "Course was successfully updated"
        redirect_to admin_courses_path
      else
        render 'edit'
      end
    end

    def show

    end

    def destroy
      @course.destroy
      flash[:danger] = "Course was successfully deleted."
      redirect_to admin_courses_path
    end

    private

    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:title,:code, :study_type, :language)
    end
  end
end