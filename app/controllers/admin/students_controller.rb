module Admin
  class StudentsController < Admin:: AdminController
    before_action :set_student, only: [:show, :edit, :update, :destroy]

    def new
      @student = Student.new
    end

    def index
      @students = Student.search(params[:search]).paginate(page: params[:page], per_page: 10)

    end

    def edit

    end

    def create
      @student = Student.new(student_params)
      if @student.save
        flash[:success] = "Student was created"
        redirect_to admin_students_path
      else
        render 'new'
      end
    end

    def update
      if @student.update(student_params)
        flash[:success] = "Student was successfully updated"
        redirect_to admin_students_path
      else
        render 'edit'
      end
    end

    def show

    end

    def destroy
      @student.destroy
      flash[:danger] = "Student was successfully deleted."
      redirect_to admin_students_path
    end

    private

    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name,:last_name, :email, :study_type)
    end
  end
end