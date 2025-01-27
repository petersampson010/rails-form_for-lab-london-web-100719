class StudentsController < ApplicationController


    def new
        @student = Student.new
    end 

    def create 
        @student = Student.new(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
        @student.save
        redirect_to student_path(@student)
    end 

    def edit 
        @student = Student.find(params[:id])
    end 

    def show 
        @student = Student.find(params[:id])
        # redirect_to student_path(@student)
    end 

    def update 
        @student = Student.find(params[:id])
        @student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end 

end 