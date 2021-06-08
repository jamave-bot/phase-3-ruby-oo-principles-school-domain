# code here!

class School

    attr_accessor :roster, :name

    def initialize(name, roster= Hash.new)
        @name = name
        @roster = roster
    end

    def add_student(student, grade)
        unless @roster[grade]
            @roster[grade] = [] 
            @roster[grade].push(student)
        else
            @roster[grade].push(student) 
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.transform_values{|gradeArr| gradeArr.sort()}
    end
end