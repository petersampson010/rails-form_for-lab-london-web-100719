class SchoolClassesController < ApplicationController


    def new
        @school_class = SchoolClass.new
    end 

    def create 
        @school_class = SchoolClass.new(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        @school_class.save
        redirect_to school_class_path(@school_class)
    end 

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 

    def show 
        @school_class = SchoolClass.find(params[:id])
        # redirect_to school_class_path(@school_class)
    end 

    def update 
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end 


end 