class Project
  # your code here
    def initialize(name, description)
        @project_name = name
        @project_description = description
    end
    def elevator_pitch
        puts "we got a great new project named #{@project_name} where we are #{@project_description}"
    end
end
project1 = Project.new("dankodarko", "finally finishing the god damn floors")
#puts project1.pname # => "Project 1"
project1.elevator_pitch