require "pry" 
class School
    attr_accessor :roster
    attr_reader :school
    def initialize(school)
        @school = school
        @roster = { }
    end


    def add_student(student, grade)
        if @roster.key?(grade)
            @roster[grade] <<student
        else
            @roster[grade] = [ ]
            @roster[grade]<< student 
        end  
    end
    
    def grade (grade)
        @roster[grade]
    end

    def sort
        # new_hsh=Hash.new ## the new_hsh comments are the long long way_memory inefficient
        @roster.each do |key, value|
        #    new_hsh[key]=value.sort
        @roster[key]= value.sort #FF failed to remember the new sorted value needs to be stored as something
        end
        # new_hsh 
        # @roster.sort.to_h.map{|k,v| [k,v.sort]}.to_h #speedy solution, sorting both, not quite reading friendly
    end
  # binding.pry
end