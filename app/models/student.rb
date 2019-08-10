class Student

    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all 
        @@all 
    end 

    def add_boating_test(test, status, instructor)
        BoatingTest.new(self, test, status, instructor)
    end 

    def self.find_student(name)
        Student.all.find {|student| student.name == name}
    end 

    def grade_percentage
        tests_taken = BoatingTest.all.select {|test| test.student == self}
        tests_passed = tests_taken.select { |test| test.status == "passed"}.count.to_f
        total_tests = tests_taken.count.to_f
        percentage = tests_passed / total_tests * 100 
        
    end
    
     
     

end
