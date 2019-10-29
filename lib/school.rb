# code here!

class School

    def initialize(school_name, school_roster = {})
        @name = school_name
        @roster = school_roster
    end

    attr_accessor :roster

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade].push(student_name)
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end

    end

    def grade(desired_grade)
        @roster[desired_grade]
    end

    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
    end

end