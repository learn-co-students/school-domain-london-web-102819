require 'pry'


class School

    attr_accessor :name, :roster, :grade

    def initialize(name)
        @name = name 
        @roster = {}
    end

    

    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = [] 
            @roster[grade] << name
        else @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        new_hash = {}
        @roster.each do |grade, array| 
            new_hash[grade] = []
            new_hash[grade] = array.sort
        end
        return new_hash
    end

end