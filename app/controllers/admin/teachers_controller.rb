module Admin
  class TeachersController < Admin:: AdminController
    before_action :set_teacher, only: [:show, :edit, :update, :destroy]

    def new
      @teacher = Teacher.new
    end

    def index
     @teachers = Teacher.search(params[:search]).paginate(page: params[:page], per_page: 10)

    end

    def edit

    end

    def create
      @teacher = Teacher.new(teacher_params)
      if @teacher.save
        flash[:success] = "Teacher was created"
        redirect_to admin_teacher_path(@teacher)
      else
        render 'new'
      end
    end

    def update
      if @teacher.update(teacher_params)
        flash[:success] = "Teacher was successfully updated"
        redirect_to admin_teacher_path(@teacher)
      else
        render 'edit'
      end
    end

    def show

    end

    def destroy
      @teacher.destroy
      flash[:danger] = "Teacher was successfully deleted."
      redirect_to admin_teachers_path
    end

    private
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    def teacher_params
      params.require(:teacher).permit(:first_name,:last_name, :email, course_ids:[])
    end
  end
end