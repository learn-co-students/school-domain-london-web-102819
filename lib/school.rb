class School

    attr_accessor :roster

    def initialize(name)
        @name=name
        @roster={}
    end

    def add_student(student_name, student_grade)
        #if first student in grade
        if !@roster.has_key?(student_grade)
            @roster[student_grade] = []
            @roster[student_grade] << student_name
        else #if student's not first in their grade
            @roster[student_grade] << student_name
        end     
    end

    def grade(grade_search)
        @roster[grade_search] 
    end

    def sort
        i=0
        while i<@roster.length do
            @roster[@roster.keys[i]] = @roster[@roster.keys[i]].sort
            i+=1
        end
        return @roster
    end
end