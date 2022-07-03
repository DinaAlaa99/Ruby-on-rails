def problem1(str,n)
    puts str*n
end 

print problem1('Dina',3)

def problem2(str)
    if str.start_with?("if") 
        puts "true"
    else 
        puts "false"
    end
end

print problem2('iftik')

def problem3(str)
    print str[-1] << str[1...-1]  << str [0]
    print "\n"
end 

print problem3('java')

def problem4(str)
    last_ch= str.length() -1 
    print  str.split('')[last_ch] + str + str.split('')[last_ch];
end     

print problem4('dina')
print "\n"

def problem6(nums)
   print rotated = nums[1], nums[2], nums[0];
end

print problem6([2,5,1])
print"\n"

def problem7(nums)
    sum = 0
    i = 0
    while i < nums.length
            if(nums[i] == 17)
             i= i + 1
         else
                sum = sum + nums[i]
         end
         i += 1
     end
        return sum
 end


print problem7([3, 5, 17, 6])