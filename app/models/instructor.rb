class Instructor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def pass_student(student, test)
        BoatingTest.all.each do |test|
            if test.student == student && test.test_name == test
                test.status = "passed"
            else 
                BoatingTest.new(student, test, "passed", self)
            end 
        end 
    end 

    # def fail_student(student, test)
    #     BoatingTest.all.each do |test|
    #         if test.student == student && test.test_name == test
    #             test.status = "failed"
    #         else 
    #             BoatingTest.new(student, test, "failed", self)
    #         end 
    #     end 
    # end

end
