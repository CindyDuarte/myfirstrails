class StudentsController < ApplicationController

    def index1
        puts "rails es chevere"
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
        puts "vista show"
    end

    def new
        @student = Student.new
        puts "vista new"
        render :form
    end

    def create
        student = Student.new(students_params)
        student.estado = true

        if student.save
            redirect_to root_path
        end
    end

    def edit
        @student = Student.find(params[:id])
        render :form
    end

    def update
        student = Student.find(params[:id])
        
        student.update(students_params)
        redirect_to student_path(student)
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
        redirect_to root_path
    end

    private
    def students_params
        
        params.require(:student).permit(:nombre, :apellido, :edad, :correo)
    end
end
