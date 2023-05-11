# class StudentsController < ApplicationController
#     def index
#         students = Student.all
#         render json: students 
#     end

#     def grades
#         students = Student.order(grade: :desc)
#         render json: students 
#     end
# end






class StudentsController < ApplicationController
    # create a route that can generate a list of students
    # provide index 
    #  set a variable to equal all the students
    #  return that variable 
    def index
        students = Student.all 
        render json: students  
    end

    def grades 
        # return students/grades  starting with the highest grade
        # index students 
        # provide a method to locate the student with the highest  grade
        #  use order method 
        grades = Student.order(grade: :desc)
        render json: grades
    end 

    def highest_grade
        best_student = Student.order(grade: :desc  ).first
        render json: best_student

    end 

  
end


