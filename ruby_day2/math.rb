class Math_
    def Calc(num1,num2,op)
        valid_operators = ['+','-','*','/']
        if !num1.is_a? Integer
            raise "First number is not Integer"
        elsif !num2.is_a? Integer
            raise "Second number is not Integer"
        elsif !valid_operators.include? op
            raise "Not a valid operator"
        end
        case op 
        when '+'
            return num1 + num2
        when '-'
            return num1 - num2
        when '*'
            return num1 * num2
        when '/'
            begin
                return num1 / num2
            rescue => exception
                return exception
            end
        end 

    end 
end

m= Math_.new 
puts m.Calc(1,0,'/')
puts m.Calc(1,8,'*')
puts m.Calc(1,0,'&')