class Calculator
    def average(object)
        object.each do |key, value|
            puts (value[0] + value[1] + value[2])/3
        end
    end
end