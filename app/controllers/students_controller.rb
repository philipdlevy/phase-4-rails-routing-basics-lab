class StudentsController < ApplicationController
    def index
        # byebug
        students = Student.all 
        render json: students
    end

    def grades
        # byebug
        student_grades = Student.all.order(grade: :desc)
        render json: student_grades
    end
end
