module Admin
  class LessonsController < Admin::AdminController
    helper_method :convert_time, :convert_day
    before_action :set_course
    before_action :set_lesson, only: [:show, :edit, :update, :destroy]

    def index
      @lessons = Lesson.includes(:teacher,:course, :room => :building).where(course_id: @course).paginate(page: params[:page], per_page: 10)
    #  @course_lessons = @course.lessons.paginate(page: params[:page], per_page: 10)

    end

    def new
      @room = Room.all.includes(:building)
      @lesson = Lesson.new
    end

    def create
      @lesson = Lesson.new(lesson_params)
      @lesson.course = @course
      if @lesson.save
        flash[:success] = "Lesson was created"
        redirect_to admin_course_lessons_path(@course)
      else
        render 'new'
      end
    end

    def edit

    end

    def update
      if @lesson.update(lesson_params)
        flash[:success] = "Lesson was updated"
        redirect_to admin_course_lessons_path(@course)
      else
        render 'edit'
      end

    end

    def show

    end

    def destroy
      @lesson.destroy
      flash[:danger] = "Lesson was deleted"
      redirect_to admin_course_lessons_path(@course)
    end



    private

    def set_course
      @course = Course.find(params[:course_id])
    end

    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    def lesson_params
      params.require(:lesson).permit(:start_at,:end_at, :room_id, :teacher_id)
    end
  end
end