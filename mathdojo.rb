class MathDojo
  # your code here
    attr_accessor :result
    def initialize
        @result=0
        return self
    end
        @result = 0
        def add(*arg)
            if arg.class == Array
            @result += arg.flatten.inject(:+)
            else
            @result += arg
            end
        self
        end
    
        def subtract(*arg)
            if arg.class == Array
                @result -= arg.flatten.inject(:+)
            else
                @result -= arg
            end
            self
        end
end
puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).result.
puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result