module PersonModule
    require 'date'
    class Person
        attr_accessor :fname, :lname, :dob
        def initialize(fname="fisrt",lname="last default name",dob=DateTime.now.to_date)
            @fname = fname
            @lname=lname
            @dob=dob
        end
        def get_person_data()
            puts "enter first name"
            @fname = gets.chomp
            puts "Enter your last name"
            @lname =gets.chomp
            puts "enter your birth date in valid format ex:2022-06-25"
            @dob = Date.parse(gets).to_s

        end
        def calc_age(dob)
            return Date.today.year - Date.parse(dob).year
        end
        def welcome
            @age=calc_age(@dob)
            puts @age
            puts "Welcome  #{fname} #{lname} you have #{@age} years,  #{@age * 12} Months and  #{@age *365} days"
        end
    end
    
end

p = PersonModule::Person.new()

p.get_person_data
p.welcome
